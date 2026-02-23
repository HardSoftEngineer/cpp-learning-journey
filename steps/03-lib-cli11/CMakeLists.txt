cmake_minimum_required(VERSION 3.20)
project(app LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# CLI11
find_package(CLI11 REQUIRED)

add_executable(app
    src/main.cpp
)

target_link_libraries(app
    PRIVATE
    CLI11::CLI11
)
