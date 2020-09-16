# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

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
CMAKE_COMMAND = /home/zherlock/cmake-3.16.6-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /home/zherlock/cmake-3.16.6-Linux-x86_64/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/zherlock/c++ example/image retrieval"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/zherlock/c++ example/image retrieval/build"

# Include any dependencies generated for this target.
include CMakeFiles/yolo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/yolo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/yolo.dir/flags.make

CMakeFiles/yolo.dir/src.cpp.o: CMakeFiles/yolo.dir/flags.make
CMakeFiles/yolo.dir/src.cpp.o: ../src.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/zherlock/c++ example/image retrieval/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/yolo.dir/src.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yolo.dir/src.cpp.o -c "/home/zherlock/c++ example/image retrieval/src.cpp"

CMakeFiles/yolo.dir/src.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yolo.dir/src.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/zherlock/c++ example/image retrieval/src.cpp" > CMakeFiles/yolo.dir/src.cpp.i

CMakeFiles/yolo.dir/src.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yolo.dir/src.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/zherlock/c++ example/image retrieval/src.cpp" -o CMakeFiles/yolo.dir/src.cpp.s

# Object files for target yolo
yolo_OBJECTS = \
"CMakeFiles/yolo.dir/src.cpp.o"

# External object files for target yolo
yolo_EXTERNAL_OBJECTS =

yolo: CMakeFiles/yolo.dir/src.cpp.o
yolo: CMakeFiles/yolo.dir/build.make
yolo: libyolov5s.so
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_videostab.so.2.4.9
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_ts.a
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_superres.so.2.4.9
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_stitching.so.2.4.9
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_contrib.so.2.4.9
yolo: /home/zherlock/SLAM/libtorch/libtorch-abi/lib/libtorch.so
yolo: /home/zherlock/SLAM/libtorch/libtorch-abi/lib/libc10.so
yolo: /home/zherlock/torchvision-abi/lib/libtorchvision.so
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_nonfree.so.2.4.9
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_ocl.so.2.4.9
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_gpu.so.2.4.9
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_photo.so.2.4.9
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_objdetect.so.2.4.9
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_legacy.so.2.4.9
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_video.so.2.4.9
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_ml.so.2.4.9
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_calib3d.so.2.4.9
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_features2d.so.2.4.9
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_highgui.so.2.4.9
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_imgproc.so.2.4.9
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_flann.so.2.4.9
yolo: /home/zherlock/opencv-2.4.9/build/lib/libopencv_core.so.2.4.9
yolo: /home/zherlock/SLAM/libtorch/libtorch-abi/lib/libc10.so
yolo: CMakeFiles/yolo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/zherlock/c++ example/image retrieval/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable yolo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/yolo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/yolo.dir/build: yolo

.PHONY : CMakeFiles/yolo.dir/build

CMakeFiles/yolo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/yolo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/yolo.dir/clean

CMakeFiles/yolo.dir/depend:
	cd "/home/zherlock/c++ example/image retrieval/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/zherlock/c++ example/image retrieval" "/home/zherlock/c++ example/image retrieval" "/home/zherlock/c++ example/image retrieval/build" "/home/zherlock/c++ example/image retrieval/build" "/home/zherlock/c++ example/image retrieval/build/CMakeFiles/yolo.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/yolo.dir/depend

