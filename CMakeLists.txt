cmake_minimum_required(VERSION 3.16)

project(j1_test)
enable_testing()

set(CMAKE_CXX_FLAGS "-std=c++2a -ggdb -Wall -Wextra -Og -fno-inline-functions") 

if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
   add_compile_options (-fdiagnostics-color=always)
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
   add_compile_options (-fcolor-diagnostics)
endif ()

find_package(jsoncpp CONFIG REQUIRED)

add_executable(j1 src/main.cpp)
target_link_libraries(j1 JsonCpp::JsonCpp)
