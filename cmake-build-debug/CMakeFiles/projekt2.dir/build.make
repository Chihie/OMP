# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /cygdrive/c/Users/kszam/.CLion2018.2/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/kszam/.CLion2018.2/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/y/Programms/Wspolbiezne/projekt2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/y/Programms/Wspolbiezne/projekt2/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/projekt2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/projekt2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/projekt2.dir/flags.make

CMakeFiles/projekt2.dir/main.cpp.o: CMakeFiles/projekt2.dir/flags.make
CMakeFiles/projekt2.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/y/Programms/Wspolbiezne/projekt2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/projekt2.dir/main.cpp.o"
	X:/Toolchains/C++/Cygwin/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/projekt2.dir/main.cpp.o -c /cygdrive/y/Programms/Wspolbiezne/projekt2/main.cpp

CMakeFiles/projekt2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/projekt2.dir/main.cpp.i"
	X:/Toolchains/C++/Cygwin/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/y/Programms/Wspolbiezne/projekt2/main.cpp > CMakeFiles/projekt2.dir/main.cpp.i

CMakeFiles/projekt2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/projekt2.dir/main.cpp.s"
	X:/Toolchains/C++/Cygwin/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/y/Programms/Wspolbiezne/projekt2/main.cpp -o CMakeFiles/projekt2.dir/main.cpp.s

# Object files for target projekt2
projekt2_OBJECTS = \
"CMakeFiles/projekt2.dir/main.cpp.o"

# External object files for target projekt2
projekt2_EXTERNAL_OBJECTS =

projekt2.exe: CMakeFiles/projekt2.dir/main.cpp.o
projekt2.exe: CMakeFiles/projekt2.dir/build.make
projekt2.exe: CMakeFiles/projekt2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/y/Programms/Wspolbiezne/projekt2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable projekt2.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/projekt2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/projekt2.dir/build: projekt2.exe

.PHONY : CMakeFiles/projekt2.dir/build

CMakeFiles/projekt2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/projekt2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/projekt2.dir/clean

CMakeFiles/projekt2.dir/depend:
	cd /cygdrive/y/Programms/Wspolbiezne/projekt2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/y/Programms/Wspolbiezne/projekt2 /cygdrive/y/Programms/Wspolbiezne/projekt2 /cygdrive/y/Programms/Wspolbiezne/projekt2/cmake-build-debug /cygdrive/y/Programms/Wspolbiezne/projekt2/cmake-build-debug /cygdrive/y/Programms/Wspolbiezne/projekt2/cmake-build-debug/CMakeFiles/projekt2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/projekt2.dir/depend
