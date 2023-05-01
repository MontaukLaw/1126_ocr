cmake_minimum_required(VERSION 3.10.1)
project(rknn_ocr)
set(CMAKE_SYSTEM_NAME Linux)

set(TOOLCHAIN_DIR /opt/atk-dlrv1126-toolchain)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_DIR}/usr/bin/arm-linux-gnueabihf-g++)
set(CMAKE_C_COMPILER ${TOOLCHAIN_DIR}/usr/bin/arm-linux-gnueabihf-gcc)
set(SYSROOT ${TOOLCHAIN_DIR}/arm-buildroot-linux-gnueabihf/sysroot/usr/include)
set(CMAKE_SYSROOT ${TOOLCHAIN_DIR}/arm-buildroot-linux-gnueabihf/sysroot)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14")

set(LIB_ARCH lib)
include_directories(include)

# rknn api
set(RKNN_API_PATH ${CMAKE_SOURCE_DIR}/librknn_api)
include_directories(${RKNN_API_PATH}/include)
set(RKNN_API_LIB ${RKNN_API_PATH}/${LIB_ARCH}/librknn_api.so)

set(OPENCV_LIBS opencv_core opencv_imgcodecs opencv_imgproc opencv_features2d opencv_flann opencv_highgui opencv_freetype opencv_videoio)

set(CMAKE_INSTALL_RPATH "lib")
add_executable(rknn_ocr
        demo.cpp
        src/DbNet.cpp
        src/clipper.cpp
        src/Crnn.cpp
        src/OcrUtils.cpp
        )

target_link_libraries(rknn_ocr
        ${RKNN_API_LIB}
        ${OPENCV_LIBS}
        pthread
        )

# install target and libraries
set(CMAKE_INSTALL_PREFIX ${CMAKE_SOURCE_DIR}/install/rknn_ocr)
install(TARGETS rknn_ocr DESTINATION ./)
install(DIRECTORY model DESTINATION ./)
#install(PROGRAMS ${RKNN_API_LIB} DESTINATION lib)