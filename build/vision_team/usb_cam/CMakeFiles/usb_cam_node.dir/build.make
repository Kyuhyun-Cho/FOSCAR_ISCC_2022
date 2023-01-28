# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/foscar/ISCC_2022/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/foscar/ISCC_2022/build

# Include any dependencies generated for this target.
include vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/depend.make

# Include the progress variables for this target.
include vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/progress.make

# Include the compile flags for this target's objects.
include vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/flags.make

vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o: vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/flags.make
vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o: /home/foscar/ISCC_2022/src/vision_team/usb_cam/nodes/usb_cam_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/foscar/ISCC_2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o"
	cd /home/foscar/ISCC_2022/build/vision_team/usb_cam && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o -c /home/foscar/ISCC_2022/src/vision_team/usb_cam/nodes/usb_cam_node.cpp

vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.i"
	cd /home/foscar/ISCC_2022/build/vision_team/usb_cam && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/foscar/ISCC_2022/src/vision_team/usb_cam/nodes/usb_cam_node.cpp > CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.i

vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.s"
	cd /home/foscar/ISCC_2022/build/vision_team/usb_cam && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/foscar/ISCC_2022/src/vision_team/usb_cam/nodes/usb_cam_node.cpp -o CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.s

vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o.requires:

.PHONY : vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o.requires

vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o.provides: vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o.requires
	$(MAKE) -f vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/build.make vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o.provides.build
.PHONY : vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o.provides

vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o.provides.build: vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o


# Object files for target usb_cam_node
usb_cam_node_OBJECTS = \
"CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o"

# External object files for target usb_cam_node
usb_cam_node_EXTERNAL_OBJECTS =

/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/build.make
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /home/foscar/ISCC_2022/devel/lib/libusb_cam.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /opt/ros/melodic/lib/libimage_transport.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /opt/ros/melodic/lib/libmessage_filters.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /opt/ros/melodic/lib/libclass_loader.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /usr/lib/libPocoFoundation.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /usr/lib/x86_64-linux-gnu/libdl.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /opt/ros/melodic/lib/libroslib.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /opt/ros/melodic/lib/librospack.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /opt/ros/melodic/lib/libcamera_info_manager.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /opt/ros/melodic/lib/libcamera_calibration_parsers.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /opt/ros/melodic/lib/libroscpp.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /opt/ros/melodic/lib/librosconsole.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /opt/ros/melodic/lib/librostime.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /opt/ros/melodic/lib/libcpp_common.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node: vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/foscar/ISCC_2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node"
	cd /home/foscar/ISCC_2022/build/vision_team/usb_cam && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/usb_cam_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/build: /home/foscar/ISCC_2022/devel/lib/usb_cam/usb_cam_node

.PHONY : vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/build

vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/requires: vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o.requires

.PHONY : vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/requires

vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/clean:
	cd /home/foscar/ISCC_2022/build/vision_team/usb_cam && $(CMAKE_COMMAND) -P CMakeFiles/usb_cam_node.dir/cmake_clean.cmake
.PHONY : vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/clean

vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/depend:
	cd /home/foscar/ISCC_2022/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/foscar/ISCC_2022/src /home/foscar/ISCC_2022/src/vision_team/usb_cam /home/foscar/ISCC_2022/build /home/foscar/ISCC_2022/build/vision_team/usb_cam /home/foscar/ISCC_2022/build/vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vision_team/usb_cam/CMakeFiles/usb_cam_node.dir/depend

