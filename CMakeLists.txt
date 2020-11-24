cmake_minimum_required(VERSION 3.1.0)
project(FastNoise)

file(GLOB INCLUDES "include")
file(GLOB SRC_FILES "src/FastNoise.cpp")

add_library(FastNoise ${SRC_FILES})

target_include_directories(FastNoise PRIVATE "${INCLUDES}")
set (FastNoise_INCLUDES "${INCLUDES}" PARENT_SCOPE)
