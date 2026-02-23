cmake_minimum_required(VERSION 3.25)
project(cpp_project LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# === Uncomment to try C++23 ===
# set(CMAKE_CXX_STANDARD 23)

add_compile_options(
    -Wall
    -Wextra
    -Wpedantic
    -Wconversion
)

# Sanitizers (debug only)
if (CMAKE_BUILD_TYPE STREQUAL "Debug")
    add_compile_options(-fsanitize=address,undefined)
    add_link_options(-fsanitize=address,undefined)
endif()

add_executable(app
    src/main.cpp
)
