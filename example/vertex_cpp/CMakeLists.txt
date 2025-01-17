cmake_minimum_required(VERSION 3.1)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

project(vertexSimple VERSION 0.1.0)

# Include dir
include_directories(/usr/local/include)

# Src
AUX_SOURCE_DIRECTORY(src SRC_FILES)

# Headers
set(PROJECT_SOURCE_DIR "src")
set(PROJECT_INCLUDE_DIR "include/vertexSimple_bits")

# Source files
set(SOURCE_FILES
    ${PROJECT_INCLUDE_DIR}/VertexSimple.h
    ${PROJECT_SOURCE_DIR}/VertexSimple.cpp
)

# Set up such that XCode organizes the files correctly
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${SOURCE_FILES})

# Add library
add_library(vertexSimple SHARED ${SOURCE_FILES})

# Include directories
target_include_directories(vertexSimple PRIVATE include/automobile_bits)

# Install
install(TARGETS vertexSimple DESTINATION lib)

# Install the headers
install(FILES include/vertexSimple DESTINATION include)

# Create base directory
install(DIRECTORY include/vertexSimple_bits DESTINATION include)
