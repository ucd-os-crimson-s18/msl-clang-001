# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/user/Documents/2017-2018/Spring/OS/PA01/msl-clang-001

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/user/Documents/2017-2018/Spring/OS/PA01/msl-clang-001/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/msl_clang_001.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/msl_clang_001.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/msl_clang_001.dir/flags.make

CMakeFiles/msl_clang_001.dir/main.c.o: CMakeFiles/msl_clang_001.dir/flags.make
CMakeFiles/msl_clang_001.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/user/Documents/2017-2018/Spring/OS/PA01/msl-clang-001/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/msl_clang_001.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/msl_clang_001.dir/main.c.o   -c /Users/user/Documents/2017-2018/Spring/OS/PA01/msl-clang-001/main.c

CMakeFiles/msl_clang_001.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msl_clang_001.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/user/Documents/2017-2018/Spring/OS/PA01/msl-clang-001/main.c > CMakeFiles/msl_clang_001.dir/main.c.i

CMakeFiles/msl_clang_001.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msl_clang_001.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/user/Documents/2017-2018/Spring/OS/PA01/msl-clang-001/main.c -o CMakeFiles/msl_clang_001.dir/main.c.s

CMakeFiles/msl_clang_001.dir/main.c.o.requires:

.PHONY : CMakeFiles/msl_clang_001.dir/main.c.o.requires

CMakeFiles/msl_clang_001.dir/main.c.o.provides: CMakeFiles/msl_clang_001.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/msl_clang_001.dir/build.make CMakeFiles/msl_clang_001.dir/main.c.o.provides.build
.PHONY : CMakeFiles/msl_clang_001.dir/main.c.o.provides

CMakeFiles/msl_clang_001.dir/main.c.o.provides.build: CMakeFiles/msl_clang_001.dir/main.c.o


# Object files for target msl_clang_001
msl_clang_001_OBJECTS = \
"CMakeFiles/msl_clang_001.dir/main.c.o"

# External object files for target msl_clang_001
msl_clang_001_EXTERNAL_OBJECTS =

msl_clang_001: CMakeFiles/msl_clang_001.dir/main.c.o
msl_clang_001: CMakeFiles/msl_clang_001.dir/build.make
msl_clang_001: CMakeFiles/msl_clang_001.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/user/Documents/2017-2018/Spring/OS/PA01/msl-clang-001/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable msl_clang_001"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/msl_clang_001.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/msl_clang_001.dir/build: msl_clang_001

.PHONY : CMakeFiles/msl_clang_001.dir/build

CMakeFiles/msl_clang_001.dir/requires: CMakeFiles/msl_clang_001.dir/main.c.o.requires

.PHONY : CMakeFiles/msl_clang_001.dir/requires

CMakeFiles/msl_clang_001.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/msl_clang_001.dir/cmake_clean.cmake
.PHONY : CMakeFiles/msl_clang_001.dir/clean

CMakeFiles/msl_clang_001.dir/depend:
	cd /Users/user/Documents/2017-2018/Spring/OS/PA01/msl-clang-001/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/user/Documents/2017-2018/Spring/OS/PA01/msl-clang-001 /Users/user/Documents/2017-2018/Spring/OS/PA01/msl-clang-001 /Users/user/Documents/2017-2018/Spring/OS/PA01/msl-clang-001/cmake-build-debug /Users/user/Documents/2017-2018/Spring/OS/PA01/msl-clang-001/cmake-build-debug /Users/user/Documents/2017-2018/Spring/OS/PA01/msl-clang-001/cmake-build-debug/CMakeFiles/msl_clang_001.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/msl_clang_001.dir/depend

