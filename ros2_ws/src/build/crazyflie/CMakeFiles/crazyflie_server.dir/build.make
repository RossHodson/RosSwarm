# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/ross/RosSwarm/ros2_ws/src/crazyswarm2/crazyflie

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ross/RosSwarm/ros2_ws/src/build/crazyflie

# Include any dependencies generated for this target.
include CMakeFiles/crazyflie_server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/crazyflie_server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/crazyflie_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/crazyflie_server.dir/flags.make

CMakeFiles/crazyflie_server.dir/src/crazyflie_server.cpp.o: CMakeFiles/crazyflie_server.dir/flags.make
CMakeFiles/crazyflie_server.dir/src/crazyflie_server.cpp.o: /home/ross/RosSwarm/ros2_ws/src/crazyswarm2/crazyflie/src/crazyflie_server.cpp
CMakeFiles/crazyflie_server.dir/src/crazyflie_server.cpp.o: CMakeFiles/crazyflie_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ross/RosSwarm/ros2_ws/src/build/crazyflie/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/crazyflie_server.dir/src/crazyflie_server.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/crazyflie_server.dir/src/crazyflie_server.cpp.o -MF CMakeFiles/crazyflie_server.dir/src/crazyflie_server.cpp.o.d -o CMakeFiles/crazyflie_server.dir/src/crazyflie_server.cpp.o -c /home/ross/RosSwarm/ros2_ws/src/crazyswarm2/crazyflie/src/crazyflie_server.cpp

CMakeFiles/crazyflie_server.dir/src/crazyflie_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/crazyflie_server.dir/src/crazyflie_server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ross/RosSwarm/ros2_ws/src/crazyswarm2/crazyflie/src/crazyflie_server.cpp > CMakeFiles/crazyflie_server.dir/src/crazyflie_server.cpp.i

CMakeFiles/crazyflie_server.dir/src/crazyflie_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/crazyflie_server.dir/src/crazyflie_server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ross/RosSwarm/ros2_ws/src/crazyswarm2/crazyflie/src/crazyflie_server.cpp -o CMakeFiles/crazyflie_server.dir/src/crazyflie_server.cpp.s

# Object files for target crazyflie_server
crazyflie_server_OBJECTS = \
"CMakeFiles/crazyflie_server.dir/src/crazyflie_server.cpp.o"

# External object files for target crazyflie_server
crazyflie_server_EXTERNAL_OBJECTS =

crazyflie_server: CMakeFiles/crazyflie_server.dir/src/crazyflie_server.cpp.o
crazyflie_server: CMakeFiles/crazyflie_server.dir/build.make
crazyflie_server: deps/crazyflie_tools/crazyflie_cpp/libcrazyflie_cpp.a
crazyflie_server: /opt/ros/jazzy/lib/libstatic_transform_broadcaster_node.so
crazyflie_server: /opt/ros/jazzy/lib/libsensor_msgs__rosidl_typesupport_fastrtps_c.so
crazyflie_server: /opt/ros/jazzy/lib/libsensor_msgs__rosidl_typesupport_fastrtps_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libsensor_msgs__rosidl_typesupport_introspection_c.so
crazyflie_server: /opt/ros/jazzy/lib/libsensor_msgs__rosidl_typesupport_introspection_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libsensor_msgs__rosidl_generator_py.so
crazyflie_server: /opt/ros/jazzy/lib/libstd_srvs__rosidl_typesupport_fastrtps_c.so
crazyflie_server: /opt/ros/jazzy/lib/libstd_srvs__rosidl_typesupport_introspection_c.so
crazyflie_server: /opt/ros/jazzy/lib/libstd_srvs__rosidl_typesupport_fastrtps_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libstd_srvs__rosidl_typesupport_introspection_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libstd_srvs__rosidl_typesupport_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libstd_srvs__rosidl_generator_py.so
crazyflie_server: /home/ross/RosSwarm/ros2_ws/src/install/crazyflie_interfaces/lib/libcrazyflie_interfaces__rosidl_typesupport_fastrtps_c.so
crazyflie_server: /home/ross/RosSwarm/ros2_ws/src/install/crazyflie_interfaces/lib/libcrazyflie_interfaces__rosidl_typesupport_fastrtps_cpp.so
crazyflie_server: /home/ross/RosSwarm/ros2_ws/src/install/crazyflie_interfaces/lib/libcrazyflie_interfaces__rosidl_typesupport_introspection_c.so
crazyflie_server: /home/ross/RosSwarm/ros2_ws/src/install/crazyflie_interfaces/lib/libcrazyflie_interfaces__rosidl_typesupport_introspection_cpp.so
crazyflie_server: /home/ross/RosSwarm/ros2_ws/src/install/crazyflie_interfaces/lib/libcrazyflie_interfaces__rosidl_typesupport_cpp.so
crazyflie_server: /home/ross/RosSwarm/ros2_ws/src/install/crazyflie_interfaces/lib/libcrazyflie_interfaces__rosidl_generator_py.so
crazyflie_server: /opt/ros/jazzy/lib/libmotion_capture_tracking_interfaces__rosidl_typesupport_fastrtps_c.so
crazyflie_server: /opt/ros/jazzy/lib/libmotion_capture_tracking_interfaces__rosidl_typesupport_fastrtps_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libmotion_capture_tracking_interfaces__rosidl_typesupport_introspection_c.so
crazyflie_server: /opt/ros/jazzy/lib/libmotion_capture_tracking_interfaces__rosidl_typesupport_introspection_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libmotion_capture_tracking_interfaces__rosidl_typesupport_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libmotion_capture_tracking_interfaces__rosidl_generator_py.so
crazyflie_server: deps/crazyflie_tools/crazyflie_cpp/crazyflie-link-cpp/libcrazyflieLinkCpp.a
crazyflie_server: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
crazyflie_server: /opt/ros/jazzy/lib/libtf2_ros.so
crazyflie_server: /opt/ros/jazzy/lib/libmessage_filters.so
crazyflie_server: /opt/ros/jazzy/lib/librclcpp_action.so
crazyflie_server: /opt/ros/jazzy/lib/librclcpp.so
crazyflie_server: /opt/ros/jazzy/lib/liblibstatistics_collector.so
crazyflie_server: /opt/ros/jazzy/lib/librosgraph_msgs__rosidl_typesupport_fastrtps_c.so
crazyflie_server: /opt/ros/jazzy/lib/librosgraph_msgs__rosidl_typesupport_fastrtps_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/librosgraph_msgs__rosidl_typesupport_introspection_c.so
crazyflie_server: /opt/ros/jazzy/lib/librosgraph_msgs__rosidl_typesupport_introspection_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/librosgraph_msgs__rosidl_typesupport_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/librosgraph_msgs__rosidl_generator_py.so
crazyflie_server: /opt/ros/jazzy/lib/librosgraph_msgs__rosidl_typesupport_c.so
crazyflie_server: /opt/ros/jazzy/lib/librosgraph_msgs__rosidl_generator_c.so
crazyflie_server: /opt/ros/jazzy/lib/libstatistics_msgs__rosidl_typesupport_fastrtps_c.so
crazyflie_server: /opt/ros/jazzy/lib/libstatistics_msgs__rosidl_typesupport_fastrtps_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libstatistics_msgs__rosidl_typesupport_introspection_c.so
crazyflie_server: /opt/ros/jazzy/lib/libstatistics_msgs__rosidl_typesupport_introspection_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libstatistics_msgs__rosidl_typesupport_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libstatistics_msgs__rosidl_generator_py.so
crazyflie_server: /opt/ros/jazzy/lib/libstatistics_msgs__rosidl_typesupport_c.so
crazyflie_server: /opt/ros/jazzy/lib/libstatistics_msgs__rosidl_generator_c.so
crazyflie_server: /opt/ros/jazzy/lib/librcl_action.so
crazyflie_server: /opt/ros/jazzy/lib/librcl.so
crazyflie_server: /opt/ros/jazzy/lib/librcl_interfaces__rosidl_typesupport_fastrtps_c.so
crazyflie_server: /opt/ros/jazzy/lib/librcl_interfaces__rosidl_typesupport_introspection_c.so
crazyflie_server: /opt/ros/jazzy/lib/librcl_interfaces__rosidl_typesupport_fastrtps_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/librcl_interfaces__rosidl_typesupport_introspection_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/librcl_interfaces__rosidl_typesupport_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/librcl_interfaces__rosidl_generator_py.so
crazyflie_server: /opt/ros/jazzy/lib/librcl_interfaces__rosidl_typesupport_c.so
crazyflie_server: /opt/ros/jazzy/lib/librcl_interfaces__rosidl_generator_c.so
crazyflie_server: /opt/ros/jazzy/lib/librcl_yaml_param_parser.so
crazyflie_server: /opt/ros/jazzy/lib/libtracetools.so
crazyflie_server: /opt/ros/jazzy/lib/librcl_logging_interface.so
crazyflie_server: /opt/ros/jazzy/lib/librmw_implementation.so
crazyflie_server: /opt/ros/jazzy/lib/libtype_description_interfaces__rosidl_typesupport_fastrtps_c.so
crazyflie_server: /opt/ros/jazzy/lib/libtype_description_interfaces__rosidl_typesupport_introspection_c.so
crazyflie_server: /opt/ros/jazzy/lib/libtype_description_interfaces__rosidl_typesupport_fastrtps_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libtype_description_interfaces__rosidl_typesupport_introspection_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libtype_description_interfaces__rosidl_typesupport_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libtype_description_interfaces__rosidl_generator_py.so
crazyflie_server: /opt/ros/jazzy/lib/libtype_description_interfaces__rosidl_typesupport_c.so
crazyflie_server: /opt/ros/jazzy/lib/libtype_description_interfaces__rosidl_generator_c.so
crazyflie_server: /opt/ros/jazzy/lib/libtf2.so
crazyflie_server: /opt/ros/jazzy/lib/libtf2_msgs__rosidl_typesupport_fastrtps_c.so
crazyflie_server: /opt/ros/jazzy/lib/libtf2_msgs__rosidl_typesupport_introspection_c.so
crazyflie_server: /opt/ros/jazzy/lib/libtf2_msgs__rosidl_typesupport_fastrtps_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libtf2_msgs__rosidl_typesupport_introspection_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libtf2_msgs__rosidl_typesupport_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libtf2_msgs__rosidl_generator_py.so
crazyflie_server: /opt/ros/jazzy/lib/libtf2_msgs__rosidl_typesupport_c.so
crazyflie_server: /opt/ros/jazzy/lib/libtf2_msgs__rosidl_generator_c.so
crazyflie_server: /opt/ros/jazzy/lib/libaction_msgs__rosidl_typesupport_fastrtps_c.so
crazyflie_server: /opt/ros/jazzy/lib/libaction_msgs__rosidl_typesupport_fastrtps_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libaction_msgs__rosidl_typesupport_introspection_c.so
crazyflie_server: /opt/ros/jazzy/lib/libaction_msgs__rosidl_typesupport_introspection_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libaction_msgs__rosidl_typesupport_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libaction_msgs__rosidl_generator_py.so
crazyflie_server: /opt/ros/jazzy/lib/libaction_msgs__rosidl_typesupport_c.so
crazyflie_server: /opt/ros/jazzy/lib/libaction_msgs__rosidl_generator_c.so
crazyflie_server: /opt/ros/jazzy/lib/libunique_identifier_msgs__rosidl_typesupport_fastrtps_c.so
crazyflie_server: /opt/ros/jazzy/lib/libunique_identifier_msgs__rosidl_typesupport_introspection_c.so
crazyflie_server: /opt/ros/jazzy/lib/libunique_identifier_msgs__rosidl_typesupport_fastrtps_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libunique_identifier_msgs__rosidl_typesupport_introspection_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libunique_identifier_msgs__rosidl_typesupport_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libunique_identifier_msgs__rosidl_typesupport_c.so
crazyflie_server: /opt/ros/jazzy/lib/libunique_identifier_msgs__rosidl_generator_c.so
crazyflie_server: /opt/ros/jazzy/lib/libsensor_msgs__rosidl_typesupport_c.so
crazyflie_server: /opt/ros/jazzy/lib/libsensor_msgs__rosidl_typesupport_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libsensor_msgs__rosidl_generator_c.so
crazyflie_server: /opt/ros/jazzy/lib/libstd_srvs__rosidl_typesupport_c.so
crazyflie_server: /opt/ros/jazzy/lib/libstd_srvs__rosidl_generator_c.so
crazyflie_server: /home/ross/RosSwarm/ros2_ws/src/install/crazyflie_interfaces/lib/libcrazyflie_interfaces__rosidl_typesupport_c.so
crazyflie_server: /home/ross/RosSwarm/ros2_ws/src/install/crazyflie_interfaces/lib/libcrazyflie_interfaces__rosidl_generator_c.so
crazyflie_server: /opt/ros/jazzy/lib/libservice_msgs__rosidl_typesupport_fastrtps_c.so
crazyflie_server: /opt/ros/jazzy/lib/libservice_msgs__rosidl_typesupport_fastrtps_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libservice_msgs__rosidl_typesupport_introspection_c.so
crazyflie_server: /opt/ros/jazzy/lib/libservice_msgs__rosidl_typesupport_introspection_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libservice_msgs__rosidl_typesupport_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libservice_msgs__rosidl_typesupport_c.so
crazyflie_server: /opt/ros/jazzy/lib/libservice_msgs__rosidl_generator_c.so
crazyflie_server: /opt/ros/jazzy/lib/libmotion_capture_tracking_interfaces__rosidl_typesupport_c.so
crazyflie_server: /opt/ros/jazzy/lib/libmotion_capture_tracking_interfaces__rosidl_generator_c.so
crazyflie_server: /opt/ros/jazzy/lib/libgeometry_msgs__rosidl_typesupport_fastrtps_c.so
crazyflie_server: /opt/ros/jazzy/lib/libgeometry_msgs__rosidl_typesupport_introspection_c.so
crazyflie_server: /opt/ros/jazzy/lib/libgeometry_msgs__rosidl_typesupport_fastrtps_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libgeometry_msgs__rosidl_typesupport_introspection_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libgeometry_msgs__rosidl_typesupport_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libgeometry_msgs__rosidl_generator_py.so
crazyflie_server: /opt/ros/jazzy/lib/libgeometry_msgs__rosidl_typesupport_c.so
crazyflie_server: /opt/ros/jazzy/lib/libgeometry_msgs__rosidl_generator_c.so
crazyflie_server: /opt/ros/jazzy/lib/libstd_msgs__rosidl_typesupport_fastrtps_c.so
crazyflie_server: /opt/ros/jazzy/lib/libstd_msgs__rosidl_typesupport_fastrtps_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libstd_msgs__rosidl_typesupport_introspection_c.so
crazyflie_server: /opt/ros/jazzy/lib/libstd_msgs__rosidl_typesupport_introspection_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libstd_msgs__rosidl_typesupport_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libstd_msgs__rosidl_generator_py.so
crazyflie_server: /opt/ros/jazzy/lib/libbuiltin_interfaces__rosidl_typesupport_fastrtps_c.so
crazyflie_server: /opt/ros/jazzy/lib/librosidl_typesupport_fastrtps_c.so
crazyflie_server: /opt/ros/jazzy/lib/libbuiltin_interfaces__rosidl_typesupport_introspection_c.so
crazyflie_server: /opt/ros/jazzy/lib/libbuiltin_interfaces__rosidl_typesupport_fastrtps_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/librosidl_typesupport_fastrtps_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/librmw.so
crazyflie_server: /opt/ros/jazzy/lib/librosidl_dynamic_typesupport.so
crazyflie_server: /opt/ros/jazzy/lib/libfastcdr.so.2.2.1
crazyflie_server: /opt/ros/jazzy/lib/libbuiltin_interfaces__rosidl_typesupport_introspection_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/librosidl_typesupport_introspection_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/librosidl_typesupport_introspection_c.so
crazyflie_server: /opt/ros/jazzy/lib/libbuiltin_interfaces__rosidl_typesupport_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/librosidl_typesupport_cpp.so
crazyflie_server: /opt/ros/jazzy/lib/libbuiltin_interfaces__rosidl_generator_py.so
crazyflie_server: /opt/ros/jazzy/lib/libstd_msgs__rosidl_typesupport_c.so
crazyflie_server: /opt/ros/jazzy/lib/libbuiltin_interfaces__rosidl_typesupport_c.so
crazyflie_server: /opt/ros/jazzy/lib/libstd_msgs__rosidl_generator_c.so
crazyflie_server: /opt/ros/jazzy/lib/libbuiltin_interfaces__rosidl_generator_c.so
crazyflie_server: /opt/ros/jazzy/lib/librosidl_typesupport_c.so
crazyflie_server: /opt/ros/jazzy/lib/librcpputils.so
crazyflie_server: /opt/ros/jazzy/lib/librosidl_runtime_c.so
crazyflie_server: /opt/ros/jazzy/lib/librcutils.so
crazyflie_server: CMakeFiles/crazyflie_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ross/RosSwarm/ros2_ws/src/build/crazyflie/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable crazyflie_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/crazyflie_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/crazyflie_server.dir/build: crazyflie_server
.PHONY : CMakeFiles/crazyflie_server.dir/build

CMakeFiles/crazyflie_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/crazyflie_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/crazyflie_server.dir/clean

CMakeFiles/crazyflie_server.dir/depend:
	cd /home/ross/RosSwarm/ros2_ws/src/build/crazyflie && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ross/RosSwarm/ros2_ws/src/crazyswarm2/crazyflie /home/ross/RosSwarm/ros2_ws/src/crazyswarm2/crazyflie /home/ross/RosSwarm/ros2_ws/src/build/crazyflie /home/ross/RosSwarm/ros2_ws/src/build/crazyflie /home/ross/RosSwarm/ros2_ws/src/build/crazyflie/CMakeFiles/crazyflie_server.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/crazyflie_server.dir/depend

