cmake_minimum_required(VERSION 3.10)
project(visualizer)

set(CMAKE_CXX_STANDARD 17)

# add_subdirectory(app)
add_executable(${PROJECT_NAME} app/src/main.cpp)

# include(CTEst)
# add_subdirectory(test)