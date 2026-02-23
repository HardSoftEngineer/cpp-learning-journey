cmake_minimum_required(VERSION 3.20)
project(confs_json_app LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# nlohmann_json
find_package(nlohmann_json CONFIG REQUIRED)

add_executable(confs_json_app
    src/main.cpp
)

target_link_libraries(confs_json_app
    PRIVATE
    nlohmann_json::nlohmann_json
)
