cmake_minimum_required(VERSION 3.1)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(PYTHON_LIBRARY_DIR "/usr/lib/python3/dist-packages")
set(PYTHON_EXECUTABLE "/usr/bin/python3")
set(IVP_PYTHON_DIR "/home/arg/ivp_python")

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()

set(CMAKE_CXX_FLAGS "-O3")
set(CMAKE_CXX_FLAGS_RELEASE "-O3")

project(vertexSimple)

include_directories("${CMAKE_SOURCE_DIR}/vertex_cpp/include/vertexSimple_bits")
include_directories("${CMAKE_SOURCE_DIR}/python")

file (GLOB SOURCE_FILES "${IVP_PYTHON_DIR}/example/vertex_cpp/src/*.cpp")
file (GLOB HEADER_FILES "${IVP_PYTHON_DIR}/example/vertex_cpp/include/vertexSimple_bits/*.hpp")
file (GLOB PYTHON_FILES "${IVP_PYTHON_DIR}/example/pybind11_vertex/*.cpp")


find_package(pybind11 REQUIRED)

pybind11_add_module(vertexSimple
${SOURCE_FILES}
${HEADER_FILES}
${PYTHON_FILES}
)

target_link_libraries(vertexSimple PUBLIC)

install(TARGETS vertexSimple
  COMPONENT python
  LIBRARY DESTINATION "${PYTHON_LIBRARY_DIR}"
)
