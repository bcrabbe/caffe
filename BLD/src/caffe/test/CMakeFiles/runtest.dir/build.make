# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sphere/gait_cnn/Caffe/caffe

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sphere/gait_cnn/Caffe/caffe/BLD

# Utility rule file for runtest.

# Include the progress variables for this target.
include src/caffe/test/CMakeFiles/runtest.dir/progress.make

src/caffe/test/CMakeFiles/runtest:
	cd /home/sphere/gait_cnn/Caffe/caffe && /home/sphere/gait_cnn/Caffe/caffe/BLD/test/test.testbin --gtest_shuffle

runtest: src/caffe/test/CMakeFiles/runtest
runtest: src/caffe/test/CMakeFiles/runtest.dir/build.make
.PHONY : runtest

# Rule to build all files generated by this target.
src/caffe/test/CMakeFiles/runtest.dir/build: runtest
.PHONY : src/caffe/test/CMakeFiles/runtest.dir/build

src/caffe/test/CMakeFiles/runtest.dir/clean:
	cd /home/sphere/gait_cnn/Caffe/caffe/BLD/src/caffe/test && $(CMAKE_COMMAND) -P CMakeFiles/runtest.dir/cmake_clean.cmake
.PHONY : src/caffe/test/CMakeFiles/runtest.dir/clean

src/caffe/test/CMakeFiles/runtest.dir/depend:
	cd /home/sphere/gait_cnn/Caffe/caffe/BLD && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sphere/gait_cnn/Caffe/caffe /home/sphere/gait_cnn/Caffe/caffe/src/caffe/test /home/sphere/gait_cnn/Caffe/caffe/BLD /home/sphere/gait_cnn/Caffe/caffe/BLD/src/caffe/test /home/sphere/gait_cnn/Caffe/caffe/BLD/src/caffe/test/CMakeFiles/runtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/caffe/test/CMakeFiles/runtest.dir/depend

