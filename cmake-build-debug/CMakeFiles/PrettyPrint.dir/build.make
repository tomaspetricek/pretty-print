# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tomaspetricek/Programming/Languages/Cpp/projects/PrettyPrint

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tomaspetricek/Programming/Languages/Cpp/projects/PrettyPrint/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/PrettyPrint.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PrettyPrint.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PrettyPrint.dir/flags.make

CMakeFiles/PrettyPrint.dir/main.cpp.o: CMakeFiles/PrettyPrint.dir/flags.make
CMakeFiles/PrettyPrint.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tomaspetricek/Programming/Languages/Cpp/projects/PrettyPrint/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PrettyPrint.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PrettyPrint.dir/main.cpp.o -c /Users/tomaspetricek/Programming/Languages/Cpp/projects/PrettyPrint/main.cpp

CMakeFiles/PrettyPrint.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PrettyPrint.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tomaspetricek/Programming/Languages/Cpp/projects/PrettyPrint/main.cpp > CMakeFiles/PrettyPrint.dir/main.cpp.i

CMakeFiles/PrettyPrint.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PrettyPrint.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tomaspetricek/Programming/Languages/Cpp/projects/PrettyPrint/main.cpp -o CMakeFiles/PrettyPrint.dir/main.cpp.s

# Object files for target PrettyPrint
PrettyPrint_OBJECTS = \
"CMakeFiles/PrettyPrint.dir/main.cpp.o"

# External object files for target PrettyPrint
PrettyPrint_EXTERNAL_OBJECTS =

PrettyPrint: CMakeFiles/PrettyPrint.dir/main.cpp.o
PrettyPrint: CMakeFiles/PrettyPrint.dir/build.make
PrettyPrint: CMakeFiles/PrettyPrint.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tomaspetricek/Programming/Languages/Cpp/projects/PrettyPrint/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PrettyPrint"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PrettyPrint.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PrettyPrint.dir/build: PrettyPrint

.PHONY : CMakeFiles/PrettyPrint.dir/build

CMakeFiles/PrettyPrint.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PrettyPrint.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PrettyPrint.dir/clean

CMakeFiles/PrettyPrint.dir/depend:
	cd /Users/tomaspetricek/Programming/Languages/Cpp/projects/PrettyPrint/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tomaspetricek/Programming/Languages/Cpp/projects/PrettyPrint /Users/tomaspetricek/Programming/Languages/Cpp/projects/PrettyPrint /Users/tomaspetricek/Programming/Languages/Cpp/projects/PrettyPrint/cmake-build-debug /Users/tomaspetricek/Programming/Languages/Cpp/projects/PrettyPrint/cmake-build-debug /Users/tomaspetricek/Programming/Languages/Cpp/projects/PrettyPrint/cmake-build-debug/CMakeFiles/PrettyPrint.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PrettyPrint.dir/depend

