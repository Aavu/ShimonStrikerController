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
include CMakeFiles/ShimonStrikerController.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ShimonStrikerController.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ShimonStrikerController.dir/flags.make

CMakeFiles/ShimonStrikerController.dir/main.cpp.o: CMakeFiles/ShimonStrikerController.dir/flags.make
CMakeFiles/ShimonStrikerController.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/CLionProjects/ShimonStrikerController/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ShimonStrikerController.dir/main.cpp.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShimonStrikerController.dir/main.cpp.o -c /home/nvidia/CLionProjects/ShimonStrikerController/main.cpp

CMakeFiles/ShimonStrikerController.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShimonStrikerController.dir/main.cpp.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/CLionProjects/ShimonStrikerController/main.cpp > CMakeFiles/ShimonStrikerController.dir/main.cpp.i

CMakeFiles/ShimonStrikerController.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShimonStrikerController.dir/main.cpp.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/CLionProjects/ShimonStrikerController/main.cpp -o CMakeFiles/ShimonStrikerController.dir/main.cpp.s

CMakeFiles/ShimonStrikerController.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/ShimonStrikerController.dir/main.cpp.o.requires

CMakeFiles/ShimonStrikerController.dir/main.cpp.o.provides: CMakeFiles/ShimonStrikerController.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/ShimonStrikerController.dir/build.make CMakeFiles/ShimonStrikerController.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/ShimonStrikerController.dir/main.cpp.o.provides

CMakeFiles/ShimonStrikerController.dir/main.cpp.o.provides.build: CMakeFiles/ShimonStrikerController.dir/main.cpp.o


CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.o: CMakeFiles/ShimonStrikerController.dir/flags.make
CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.o: OSCReceiver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/CLionProjects/ShimonStrikerController/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.o -c /home/nvidia/CLionProjects/ShimonStrikerController/OSCReceiver.cpp

CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/CLionProjects/ShimonStrikerController/OSCReceiver.cpp > CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.i

CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/CLionProjects/ShimonStrikerController/OSCReceiver.cpp -o CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.s

CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.o.requires:

.PHONY : CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.o.requires

CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.o.provides: CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.o.requires
	$(MAKE) -f CMakeFiles/ShimonStrikerController.dir/build.make CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.o.provides.build
.PHONY : CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.o.provides

CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.o.provides.build: CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.o


CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.o: CMakeFiles/ShimonStrikerController.dir/flags.make
CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.o: StrikerController.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/CLionProjects/ShimonStrikerController/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.o -c /home/nvidia/CLionProjects/ShimonStrikerController/StrikerController.cpp

CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/CLionProjects/ShimonStrikerController/StrikerController.cpp > CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.i

CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/CLionProjects/ShimonStrikerController/StrikerController.cpp -o CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.s

CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.o.requires:

.PHONY : CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.o.requires

CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.o.provides: CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.o.requires
	$(MAKE) -f CMakeFiles/ShimonStrikerController.dir/build.make CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.o.provides.build
.PHONY : CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.o.provides

CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.o.provides.build: CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.o


CMakeFiles/ShimonStrikerController.dir/Striker.cpp.o: CMakeFiles/ShimonStrikerController.dir/flags.make
CMakeFiles/ShimonStrikerController.dir/Striker.cpp.o: Striker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/CLionProjects/ShimonStrikerController/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ShimonStrikerController.dir/Striker.cpp.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShimonStrikerController.dir/Striker.cpp.o -c /home/nvidia/CLionProjects/ShimonStrikerController/Striker.cpp

CMakeFiles/ShimonStrikerController.dir/Striker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShimonStrikerController.dir/Striker.cpp.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/CLionProjects/ShimonStrikerController/Striker.cpp > CMakeFiles/ShimonStrikerController.dir/Striker.cpp.i

CMakeFiles/ShimonStrikerController.dir/Striker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShimonStrikerController.dir/Striker.cpp.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/CLionProjects/ShimonStrikerController/Striker.cpp -o CMakeFiles/ShimonStrikerController.dir/Striker.cpp.s

CMakeFiles/ShimonStrikerController.dir/Striker.cpp.o.requires:

.PHONY : CMakeFiles/ShimonStrikerController.dir/Striker.cpp.o.requires

CMakeFiles/ShimonStrikerController.dir/Striker.cpp.o.provides: CMakeFiles/ShimonStrikerController.dir/Striker.cpp.o.requires
	$(MAKE) -f CMakeFiles/ShimonStrikerController.dir/build.make CMakeFiles/ShimonStrikerController.dir/Striker.cpp.o.provides.build
.PHONY : CMakeFiles/ShimonStrikerController.dir/Striker.cpp.o.provides

CMakeFiles/ShimonStrikerController.dir/Striker.cpp.o.provides.build: CMakeFiles/ShimonStrikerController.dir/Striker.cpp.o


CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.o: CMakeFiles/ShimonStrikerController.dir/flags.make
CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.o: NotePosition.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/CLionProjects/ShimonStrikerController/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.o -c /home/nvidia/CLionProjects/ShimonStrikerController/NotePosition.cpp

CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/CLionProjects/ShimonStrikerController/NotePosition.cpp > CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.i

CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/CLionProjects/ShimonStrikerController/NotePosition.cpp -o CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.s

CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.o.requires:

.PHONY : CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.o.requires

CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.o.provides: CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.o.requires
	$(MAKE) -f CMakeFiles/ShimonStrikerController.dir/build.make CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.o.provides.build
.PHONY : CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.o.provides

CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.o.provides.build: CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.o


# Object files for target ShimonStrikerController
ShimonStrikerController_OBJECTS = \
"CMakeFiles/ShimonStrikerController.dir/main.cpp.o" \
"CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.o" \
"CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.o" \
"CMakeFiles/ShimonStrikerController.dir/Striker.cpp.o" \
"CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.o"

# External object files for target ShimonStrikerController
ShimonStrikerController_EXTERNAL_OBJECTS =

ShimonStrikerController: CMakeFiles/ShimonStrikerController.dir/main.cpp.o
ShimonStrikerController: CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.o
ShimonStrikerController: CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.o
ShimonStrikerController: CMakeFiles/ShimonStrikerController.dir/Striker.cpp.o
ShimonStrikerController: CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.o
ShimonStrikerController: CMakeFiles/ShimonStrikerController.dir/build.make
ShimonStrikerController: CMakeFiles/ShimonStrikerController.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nvidia/CLionProjects/ShimonStrikerController/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable ShimonStrikerController"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ShimonStrikerController.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ShimonStrikerController.dir/build: ShimonStrikerController

.PHONY : CMakeFiles/ShimonStrikerController.dir/build

CMakeFiles/ShimonStrikerController.dir/requires: CMakeFiles/ShimonStrikerController.dir/main.cpp.o.requires
CMakeFiles/ShimonStrikerController.dir/requires: CMakeFiles/ShimonStrikerController.dir/OSCReceiver.cpp.o.requires
CMakeFiles/ShimonStrikerController.dir/requires: CMakeFiles/ShimonStrikerController.dir/StrikerController.cpp.o.requires
CMakeFiles/ShimonStrikerController.dir/requires: CMakeFiles/ShimonStrikerController.dir/Striker.cpp.o.requires
CMakeFiles/ShimonStrikerController.dir/requires: CMakeFiles/ShimonStrikerController.dir/NotePosition.cpp.o.requires

.PHONY : CMakeFiles/ShimonStrikerController.dir/requires

CMakeFiles/ShimonStrikerController.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ShimonStrikerController.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ShimonStrikerController.dir/clean

CMakeFiles/ShimonStrikerController.dir/depend:
	cd /home/nvidia/CLionProjects/ShimonStrikerController && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nvidia/CLionProjects/ShimonStrikerController /home/nvidia/CLionProjects/ShimonStrikerController /home/nvidia/CLionProjects/ShimonStrikerController /home/nvidia/CLionProjects/ShimonStrikerController /home/nvidia/CLionProjects/ShimonStrikerController/CMakeFiles/ShimonStrikerController.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ShimonStrikerController.dir/depend

