cmake_minimum_required(VERSION 3.12)
project(TuiBlast)

set(CMAKE_CXX_STANDARD 17)

# Header includes
include_directories(${CMAKE_SOURCE_DIR}/include)

file(GLOB PROJECT_HEADERS 
    ${CMAKE_SOURCE_DIR}/include/TuiBlast/*.h
    ${CMAKE_SOURCE_DIR}/include/TuiBlast/*.hpp
    ${CMAKE_SOURCE_DIR}/textures/*.h
    ${CMAKE_SOURCE_DIR}/textures/*.hpp
)

set(SOURCES
    src/main.cpp
    src/tuiRenderer.cpp
)

add_executable(${PROJECT_NAME} ${SOURCES} ${PROJECT_HEADERS})

target_include_directories(${PROJECT_NAME} PRIVATE 
    ${CMAKE_SOURCE_DIR}/include
    ${CMAKE_SOURCE_DIR}/include/TuiBlast
    ${CMAKE_SOURCE_DIR}/textures
)

target_link_libraries(${PROJECT_NAME} PRIVATE)
