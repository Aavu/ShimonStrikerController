cmake_minimum_required(VERSION 3.5)
set(PROJECT OSC-test)
project(${PROJECT})

INCLUDE_DIRECTORIES(/usr/local/include)
LINK_DIRECTORIES(/usr/local/lib)
set(CMAKE_CXX_STANDARD 14)

set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -Wall")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -Wall")

find_package(liblo REQUIRED)
add_executable(${PROJECT_NAME} main.cpp OSCReceiver.cpp OSCReceiver.h StrikerController.cpp StrikerController.h
        Striker.cpp Striker.h NotePosition.cpp NotePosition.h DS.h)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} lo -lEposCmd -pthread)