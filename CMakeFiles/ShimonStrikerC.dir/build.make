# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nvidia/CLionProjects/ShimonStrikerController

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nvidia/CLionProjects/ShimonStrikerController

# Include any dependencies generated for this target.
include CMakeFiles/ShimonStrikerC.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ShimonStrikerC.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ShimonStrikerC.dir/flags.make

CMakeFiles/ShimonStrikerC.dir/main.cpp.o: CMakeFiles/ShimonStrikerC.dir/flags.make
CMakeFiles/ShimonStrikerC.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/CLionProjects/ShimonStrikerController/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ShimonStrikerC.dir/main.cpp.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShimonStrikerC.dir/main.cpp.o -c /home/nvidia/CLionProjects/ShimonStrikerController/main.cpp

CMakeFiles/ShimonStrikerC.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShimonStrikerC.dir/main.cpp.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/CLionProjects/ShimonStrikerController/main.cpp > CMakeFiles/ShimonStrikerC.dir/main.cpp.i

CMakeFiles/ShimonStrikerC.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShimonStrikerC.dir/main.cpp.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/CLionProjects/ShimonStrikerController/main.cpp -o CMakeFiles/ShimonStrikerC.dir/main.cpp.s

CMakeFiles/ShimonStrikerC.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/ShimonStrikerC.dir/main.cpp.o.requires

CMakeFiles/ShimonStrikerC.dir/main.cpp.o.provides: CMakeFiles/ShimonStrikerC.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/ShimonStrikerC.dir/build.make CMakeFiles/ShimonStrikerC.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/ShimonStrikerC.dir/main.cpp.o.provides

CMakeFiles/ShimonStrikerC.dir/main.cpp.o.provides.build: CMakeFiles/ShimonStrikerC.dir/main.cpp.o


CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.o: CMakeFiles/ShimonStrikerC.dir/flags.make
CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.o: OSCReceiver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/CLionProjects/ShimonStrikerController/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.o -c /home/nvidia/CLionProjects/ShimonStrikerController/OSCReceiver.cpp

CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/CLionProjects/ShimonStrikerController/OSCReceiver.cpp > CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.i

CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/CLionProjects/ShimonStrikerController/OSCReceiver.cpp -o CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.s

CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.o.requires:

.PHONY : CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.o.requires

CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.o.provides: CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.o.requires
	$(MAKE) -f CMakeFiles/ShimonStrikerC.dir/build.make CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.o.provides.build
.PHONY : CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.o.provides

CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.o.provides.build: CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.o


CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.o: CMakeFiles/ShimonStrikerC.dir/flags.make
CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.o: StrikerController.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/CLionProjects/ShimonStrikerController/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.o -c /home/nvidia/CLionProjects/ShimonStrikerController/StrikerController.cpp

CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/CLionProjects/ShimonStrikerController/StrikerController.cpp > CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.i

CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/CLionProjects/ShimonStrikerController/StrikerController.cpp -o CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.s

CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.o.requires:

.PHONY : CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.o.requires

CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.o.provides: CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.o.requires
	$(MAKE) -f CMakeFiles/ShimonStrikerC.dir/build.make CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.o.provides.build
.PHONY : CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.o.provides

CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.o.provides.build: CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.o


CMakeFiles/ShimonStrikerC.dir/Striker.cpp.o: CMakeFiles/ShimonStrikerC.dir/flags.make
CMakeFiles/ShimonStrikerC.dir/Striker.cpp.o: Striker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/CLionProjects/ShimonStrikerController/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ShimonStrikerC.dir/Striker.cpp.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShimonStrikerC.dir/Striker.cpp.o -c /home/nvidia/CLionProjects/ShimonStrikerController/Striker.cpp

CMakeFiles/ShimonStrikerC.dir/Striker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShimonStrikerC.dir/Striker.cpp.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/CLionProjects/ShimonStrikerController/Striker.cpp > CMakeFiles/ShimonStrikerC.dir/Striker.cpp.i

CMakeFiles/ShimonStrikerC.dir/Striker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShimonStrikerC.dir/Striker.cpp.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/CLionProjects/ShimonStrikerController/Striker.cpp -o CMakeFiles/ShimonStrikerC.dir/Striker.cpp.s

CMakeFiles/ShimonStrikerC.dir/Striker.cpp.o.requires:

.PHONY : CMakeFiles/ShimonStrikerC.dir/Striker.cpp.o.requires

CMakeFiles/ShimonStrikerC.dir/Striker.cpp.o.provides: CMakeFiles/ShimonStrikerC.dir/Striker.cpp.o.requires
	$(MAKE) -f CMakeFiles/ShimonStrikerC.dir/build.make CMakeFiles/ShimonStrikerC.dir/Striker.cpp.o.provides.build
.PHONY : CMakeFiles/ShimonStrikerC.dir/Striker.cpp.o.provides

CMakeFiles/ShimonStrikerC.dir/Striker.cpp.o.provides.build: CMakeFiles/ShimonStrikerC.dir/Striker.cpp.o


CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.o: CMakeFiles/ShimonStrikerC.dir/flags.make
CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.o: NotePosition.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/CLionProjects/ShimonStrikerController/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.o -c /home/nvidia/CLionProjects/ShimonStrikerController/NotePosition.cpp

CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/CLionProjects/ShimonStrikerController/NotePosition.cpp > CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.i

CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/CLionProjects/ShimonStrikerController/NotePosition.cpp -o CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.s

CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.o.requires:

.PHONY : CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.o.requires

CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.o.provides: CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.o.requires
	$(MAKE) -f CMakeFiles/ShimonStrikerC.dir/build.make CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.o.provides.build
.PHONY : CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.o.provides

CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.o.provides.build: CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.o


# Object files for target ShimonStrikerC
ShimonStrikerC_OBJECTS = \
"CMakeFiles/ShimonStrikerC.dir/main.cpp.o" \
"CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.o" \
"CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.o" \
"CMakeFiles/ShimonStrikerC.dir/Striker.cpp.o" \
"CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.o"

# External object files for target ShimonStrikerC
ShimonStrikerC_EXTERNAL_OBJECTS =

ShimonStrikerC: CMakeFiles/ShimonStrikerC.dir/main.cpp.o
ShimonStrikerC: CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.o
ShimonStrikerC: CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.o
ShimonStrikerC: CMakeFiles/ShimonStrikerC.dir/Striker.cpp.o
ShimonStrikerC: CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.o
ShimonStrikerC: CMakeFiles/ShimonStrikerC.dir/build.make
ShimonStrikerC: CMakeFiles/ShimonStrikerC.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nvidia/CLionProjects/ShimonStrikerController/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable ShimonStrikerC"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ShimonStrikerC.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ShimonStrikerC.dir/build: ShimonStrikerC

.PHONY : CMakeFiles/ShimonStrikerC.dir/build

CMakeFiles/ShimonStrikerC.dir/requires: CMakeFiles/ShimonStrikerC.dir/main.cpp.o.requires
CMakeFiles/ShimonStrikerC.dir/requires: CMakeFiles/ShimonStrikerC.dir/OSCReceiver.cpp.o.requires
CMakeFiles/ShimonStrikerC.dir/requires: CMakeFiles/ShimonStrikerC.dir/StrikerController.cpp.o.requires
CMakeFiles/ShimonStrikerC.dir/requires: CMakeFiles/ShimonStrikerC.dir/Striker.cpp.o.requires
CMakeFiles/ShimonStrikerC.dir/requires: CMakeFiles/ShimonStrikerC.dir/NotePosition.cpp.o.requires

.PHONY : CMakeFiles/ShimonStrikerC.dir/requires

CMakeFiles/ShimonStrikerC.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ShimonStrikerC.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ShimonStrikerC.dir/clean

CMakeFiles/ShimonStrikerC.dir/depend:
	cd /home/nvidia/CLionProjects/ShimonStrikerController && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nvidia/CLionProjects/ShimonStrikerController /home/nvidia/CLionProjects/ShimonStrikerController /home/nvidia/CLionProjects/ShimonStrikerController /home/nvidia/CLionProjects/ShimonStrikerController /home/nvidia/CLionProjects/ShimonStrikerController/CMakeFiles/ShimonStrikerC.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ShimonStrikerC.dir/depend
