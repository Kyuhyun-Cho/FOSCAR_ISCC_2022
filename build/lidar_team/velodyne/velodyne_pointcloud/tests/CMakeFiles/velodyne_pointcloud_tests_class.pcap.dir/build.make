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

# Utility rule file for velodyne_pointcloud_tests_class.pcap.

# Include the progress variables for this target.
include lidar_team/velodyne/velodyne_pointcloud/tests/CMakeFiles/velodyne_pointcloud_tests_class.pcap.dir/progress.make

lidar_team/velodyne/velodyne_pointcloud/tests/CMakeFiles/velodyne_pointcloud_tests_class.pcap:
	cd /home/foscar/ISCC_2022/build/lidar_team/velodyne/velodyne_pointcloud/tests && /usr/bin/python2 /opt/ros/melodic/share/catkin/cmake/test/download_checkmd5.py http://download.ros.org/data/velodyne/class.pcap /home/foscar/ISCC_2022/devel/share/velodyne_pointcloud/tests/class.pcap 65808d25772101358a3719b451b3d015 --ignore-error

velodyne_pointcloud_tests_class.pcap: lidar_team/velodyne/velodyne_pointcloud/tests/CMakeFiles/velodyne_pointcloud_tests_class.pcap
velodyne_pointcloud_tests_class.pcap: lidar_team/velodyne/velodyne_pointcloud/tests/CMakeFiles/velodyne_pointcloud_tests_class.pcap.dir/build.make

.PHONY : velodyne_pointcloud_tests_class.pcap

# Rule to build all files generated by this target.
lidar_team/velodyne/velodyne_pointcloud/tests/CMakeFiles/velodyne_pointcloud_tests_class.pcap.dir/build: velodyne_pointcloud_tests_class.pcap

.PHONY : lidar_team/velodyne/velodyne_pointcloud/tests/CMakeFiles/velodyne_pointcloud_tests_class.pcap.dir/build

lidar_team/velodyne/velodyne_pointcloud/tests/CMakeFiles/velodyne_pointcloud_tests_class.pcap.dir/clean:
	cd /home/foscar/ISCC_2022/build/lidar_team/velodyne/velodyne_pointcloud/tests && $(CMAKE_COMMAND) -P CMakeFiles/velodyne_pointcloud_tests_class.pcap.dir/cmake_clean.cmake
.PHONY : lidar_team/velodyne/velodyne_pointcloud/tests/CMakeFiles/velodyne_pointcloud_tests_class.pcap.dir/clean

lidar_team/velodyne/velodyne_pointcloud/tests/CMakeFiles/velodyne_pointcloud_tests_class.pcap.dir/depend:
	cd /home/foscar/ISCC_2022/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/foscar/ISCC_2022/src /home/foscar/ISCC_2022/src/lidar_team/velodyne/velodyne_pointcloud/tests /home/foscar/ISCC_2022/build /home/foscar/ISCC_2022/build/lidar_team/velodyne/velodyne_pointcloud/tests /home/foscar/ISCC_2022/build/lidar_team/velodyne/velodyne_pointcloud/tests/CMakeFiles/velodyne_pointcloud_tests_class.pcap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lidar_team/velodyne/velodyne_pointcloud/tests/CMakeFiles/velodyne_pointcloud_tests_class.pcap.dir/depend

