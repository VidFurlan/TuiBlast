# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vid/Dev/TuiBlast

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vid/Dev/TuiBlast/build

# Include any dependencies generated for this target.
include CMakeFiles/TuiBlast.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/TuiBlast.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/TuiBlast.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TuiBlast.dir/flags.make

CMakeFiles/TuiBlast.dir/src/main.cpp.o: CMakeFiles/TuiBlast.dir/flags.make
CMakeFiles/TuiBlast.dir/src/main.cpp.o: /home/vid/Dev/TuiBlast/src/main.cpp
CMakeFiles/TuiBlast.dir/src/main.cpp.o: CMakeFiles/TuiBlast.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vid/Dev/TuiBlast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TuiBlast.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TuiBlast.dir/src/main.cpp.o -MF CMakeFiles/TuiBlast.dir/src/main.cpp.o.d -o CMakeFiles/TuiBlast.dir/src/main.cpp.o -c /home/vid/Dev/TuiBlast/src/main.cpp

CMakeFiles/TuiBlast.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/TuiBlast.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vid/Dev/TuiBlast/src/main.cpp > CMakeFiles/TuiBlast.dir/src/main.cpp.i

CMakeFiles/TuiBlast.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/TuiBlast.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vid/Dev/TuiBlast/src/main.cpp -o CMakeFiles/TuiBlast.dir/src/main.cpp.s

CMakeFiles/TuiBlast.dir/src/tuiRenderer.cpp.o: CMakeFiles/TuiBlast.dir/flags.make
CMakeFiles/TuiBlast.dir/src/tuiRenderer.cpp.o: /home/vid/Dev/TuiBlast/src/tuiRenderer.cpp
CMakeFiles/TuiBlast.dir/src/tuiRenderer.cpp.o: CMakeFiles/TuiBlast.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vid/Dev/TuiBlast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/TuiBlast.dir/src/tuiRenderer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TuiBlast.dir/src/tuiRenderer.cpp.o -MF CMakeFiles/TuiBlast.dir/src/tuiRenderer.cpp.o.d -o CMakeFiles/TuiBlast.dir/src/tuiRenderer.cpp.o -c /home/vid/Dev/TuiBlast/src/tuiRenderer.cpp

CMakeFiles/TuiBlast.dir/src/tuiRenderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/TuiBlast.dir/src/tuiRenderer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vid/Dev/TuiBlast/src/tuiRenderer.cpp > CMakeFiles/TuiBlast.dir/src/tuiRenderer.cpp.i

CMakeFiles/TuiBlast.dir/src/tuiRenderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/TuiBlast.dir/src/tuiRenderer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vid/Dev/TuiBlast/src/tuiRenderer.cpp -o CMakeFiles/TuiBlast.dir/src/tuiRenderer.cpp.s

# Object files for target TuiBlast
TuiBlast_OBJECTS = \
"CMakeFiles/TuiBlast.dir/src/main.cpp.o" \
"CMakeFiles/TuiBlast.dir/src/tuiRenderer.cpp.o"

# External object files for target TuiBlast
TuiBlast_EXTERNAL_OBJECTS =

TuiBlast: CMakeFiles/TuiBlast.dir/src/main.cpp.o
TuiBlast: CMakeFiles/TuiBlast.dir/src/tuiRenderer.cpp.o
TuiBlast: CMakeFiles/TuiBlast.dir/build.make
TuiBlast: CMakeFiles/TuiBlast.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/vid/Dev/TuiBlast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable TuiBlast"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TuiBlast.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TuiBlast.dir/build: TuiBlast
.PHONY : CMakeFiles/TuiBlast.dir/build

CMakeFiles/TuiBlast.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TuiBlast.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TuiBlast.dir/clean

CMakeFiles/TuiBlast.dir/depend:
	cd /home/vid/Dev/TuiBlast/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vid/Dev/TuiBlast /home/vid/Dev/TuiBlast /home/vid/Dev/TuiBlast/build /home/vid/Dev/TuiBlast/build /home/vid/Dev/TuiBlast/build/CMakeFiles/TuiBlast.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/TuiBlast.dir/depend

