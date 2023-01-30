cmake_minimum_required(VERSION 3.1.0)
project(OAKonKhadas VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 20)

add_subdirectory(${PROJECT_SOURCE_DIR}/src)
include_directories(
    ${PROJECT_SOURCE_DIR}/include
    ${PROJECT_SOURCE_DIR}/include/dynamixel_sdk
    ${PROJECT_SOURCE_DIR}/src
    /usr/local/include/opencv4
    /usr/local/include/depthai/dependencies
    /usr/local/include/depthai-shared/3rdparty
    /usr/local/lib/cmake/depthai/dependencies/include)

include(CTest)
enable_testing()

file(GLOB all_SRCS
    "${PROJECT_SOURCE_DIR}/include/*.h"
    "${PROJECT_SOURCE_DIR}/include/*.hpp"
    "${PROJECT_SOURCE_DIR}/include/dynamixel_sdk/*.h"
    "${PROJECT_SOURCE_DIR}/src/*.h"
    "${PROJECT_SOURCE_DIR}/src/*.hpp"
    "${PROJECT_SOURCE_DIR}/src/*.c"
    "${PROJECT_SOURCE_DIR}/src/*.cpp"
    "${PROJECT_SOURCE_DIR}/src/dynamixel_sdk/*.c"
    "${PROJECT_SOURCE_DIR}/src/dynamixel_sdk/*.cpp"
)

add_executable(${PROJECT_NAME} main.cpp ${all_SRCS} )

link_directories(
    /usr/lib/arch64-linux-gnu
    /usr/local/lib/cmake/depthai/dependencies/lib)
target_link_libraries(${PROJECT_NAME} libopencv_core.so libopencv_highgui.so libdepthai-opencv.so libdepthai-core.so libz.so)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
