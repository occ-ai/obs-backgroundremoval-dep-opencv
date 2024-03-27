Param($Configuration, $Version)

cmake opencv -B build_$Configuration `
  -DOPENCV_FORCE_3RDPARTY_BUILD=ON `
  -DBUILD_SHARED_LIBS=OFF `
  -DBUILD_opencv_apps=OFF `
  -DBUILD_opencv_js=OFF `
  -DBUILD_ANDROID_PROJECTS=OFF `
  -DBUILD_ANDROID_EXAMPLES=OFF `
  -DBUILD_DOCS=OFF `
  -DBUILD_EXAMPLES=OFF `
  -DBUILD_PACKAGE=OFF `
  -DBUILD_PERF_TESTS=OFF `
  -DBUILD_TESTS=OFF `
  -DBUILD_WITH_DEBUG_INFO=OFF `
  -DBUILD_WITH_STATIC_CRT=OFF `
  -DBUILD_WITH_DYNAMIC_IPP=OFF `
  -DBUILD_FAT_JAVA_LIB=OFF `
  -DBUILD_ANDROID_SERVICE=OFF `
  -DBUILD_CUDA_STUBS=OFF `
  -DBUILD_JAVA=OFF `
  -DBUILD_OBJC=OFF `
  -DBUILD_opencv_python3=OFF `
  -DINSTALL_CREATE_DISTRIB=OFF `
  -DINSTALL_BIN_EXAMPLES=OFF `
  -DINSTALL_C_EXAMPLES=OFF `
  -DINSTALL_PYTHON_EXAMPLES=OFF `
  -DINSTALL_ANDROID_EXAMPLES=OFF `
  -DINSTALL_TO_MANGLED_PATHS=OFF `
  -DINSTALL_TESTS=OFF `
  -DBUILD_opencv_calib3d=OFF `
  -DBUILD_opencv_core=ON `
  -DBUILD_opencv_dnn=OFF `
  -DBUILD_opencv_features2d=ON `
  -DBUILD_opencv_flann=OFF `
  -DBUILD_opencv_gapi=OFF `
  -DBUILD_opencv_highgui=ON `
  -DBUILD_opencv_imgcodecs=ON `
  -DBUILD_opencv_imgproc=ON `
  -DBUILD_opencv_ml=OFF `
  -DBUILD_opencv_objdetect=OFF `
  -DBUILD_opencv_photo=ON `
  -DBUILD_opencv_stitching=OFF `
  -DBUILD_opencv_video=ON `
  -DBUILD_opencv_videoio=ON `
  -DWITH_PNG=OFF `
  -DWITH_JPEG=OFF `
  -DWITH_TIFF=OFF `
  -DWITH_WEBP=OFF `
  -DWITH_OPENJPEG=OFF `
  -DWITH_JASPER=OFF `
  -DWITH_OPENEXR=OFF `
  -DWITH_FFMPEG=OFF `
  -DWITH_GSTREAMER=OFF `
  -DWITH_1394=OFF `
  -DWITH_PROTOBUF=OFF `
  -DBUILD_PROTOBUF=OFF `
  -DWITH_CAROTENE=OFF `
  -DWITH_EIGEN=OFF `
  -DWITH_OPENVX=OFF `
  -DWITH_CLP=OFF `
  -DWITH_DIRECTX=OFF `
  -DWITH_VA=OFF `
  -DWITH_LAPACK=OFF `
  -DWITH_QUIRC=OFF `
  -DWITH_ADE=OFF `
  -DWITH_ITT=OFF `
  -DWITH_OPENCL=OFF `
  -DWITH_IPP=OFF

  cmake --build build_$Configuration --config $Configuration
  cmake --install build_$Configuration --config $Configuration --prefix release/$Configuration
  Compress-Archive release\$Configuration\* release\opencv-windows-$Version-$Configuration.zip -Verbose
  