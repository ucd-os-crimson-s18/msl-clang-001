cmake_minimum_required(VERSION 3.6)
project(msl_clang_001)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.c BinaryTree.c BinaryTree.h)

add_executable(msl_clang_001 ${SOURCE_FILES})