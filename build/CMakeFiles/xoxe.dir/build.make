# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/tigakub/Documents/Robotics/OAKonKhadas

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tigakub/Documents/Robotics/OAKonKhadas/build

# Include any dependencies generated for this target.
include CMakeFiles/xoxe.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/xoxe.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/xoxe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/xoxe.dir/flags.make

CMakeFiles/xoxe.dir/main.cpp.o: CMakeFiles/xoxe.dir/flags.make
CMakeFiles/xoxe.dir/main.cpp.o: ../main.cpp
CMakeFiles/xoxe.dir/main.cpp.o: CMakeFiles/xoxe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tigakub/Documents/Robotics/OAKonKhadas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/xoxe.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xoxe.dir/main.cpp.o -MF CMakeFiles/xoxe.dir/main.cpp.o.d -o CMakeFiles/xoxe.dir/main.cpp.o -c /home/tigakub/Documents/Robotics/OAKonKhadas/main.cpp

CMakeFiles/xoxe.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xoxe.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tigakub/Documents/Robotics/OAKonKhadas/main.cpp > CMakeFiles/xoxe.dir/main.cpp.i

CMakeFiles/xoxe.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xoxe.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tigakub/Documents/Robotics/OAKonKhadas/main.cpp -o CMakeFiles/xoxe.dir/main.cpp.s

CMakeFiles/xoxe.dir/src/Xoxe.cpp.o: CMakeFiles/xoxe.dir/flags.make
CMakeFiles/xoxe.dir/src/Xoxe.cpp.o: ../src/Xoxe.cpp
CMakeFiles/xoxe.dir/src/Xoxe.cpp.o: CMakeFiles/xoxe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tigakub/Documents/Robotics/OAKonKhadas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/xoxe.dir/src/Xoxe.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xoxe.dir/src/Xoxe.cpp.o -MF CMakeFiles/xoxe.dir/src/Xoxe.cpp.o.d -o CMakeFiles/xoxe.dir/src/Xoxe.cpp.o -c /home/tigakub/Documents/Robotics/OAKonKhadas/src/Xoxe.cpp

CMakeFiles/xoxe.dir/src/Xoxe.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xoxe.dir/src/Xoxe.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tigakub/Documents/Robotics/OAKonKhadas/src/Xoxe.cpp > CMakeFiles/xoxe.dir/src/Xoxe.cpp.i

CMakeFiles/xoxe.dir/src/Xoxe.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xoxe.dir/src/Xoxe.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tigakub/Documents/Robotics/OAKonKhadas/src/Xoxe.cpp -o CMakeFiles/xoxe.dir/src/Xoxe.cpp.s

CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_read.cpp.o: CMakeFiles/xoxe.dir/flags.make
CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_read.cpp.o: ../src/dynamixel_sdk/group_bulk_read.cpp
CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_read.cpp.o: CMakeFiles/xoxe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tigakub/Documents/Robotics/OAKonKhadas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_read.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_read.cpp.o -MF CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_read.cpp.o.d -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_read.cpp.o -c /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/group_bulk_read.cpp

CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_read.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_read.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/group_bulk_read.cpp > CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_read.cpp.i

CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_read.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_read.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/group_bulk_read.cpp -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_read.cpp.s

CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_write.cpp.o: CMakeFiles/xoxe.dir/flags.make
CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_write.cpp.o: ../src/dynamixel_sdk/group_bulk_write.cpp
CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_write.cpp.o: CMakeFiles/xoxe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tigakub/Documents/Robotics/OAKonKhadas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_write.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_write.cpp.o -MF CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_write.cpp.o.d -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_write.cpp.o -c /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/group_bulk_write.cpp

CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_write.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_write.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/group_bulk_write.cpp > CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_write.cpp.i

CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_write.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_write.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/group_bulk_write.cpp -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_write.cpp.s

CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_read.cpp.o: CMakeFiles/xoxe.dir/flags.make
CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_read.cpp.o: ../src/dynamixel_sdk/group_sync_read.cpp
CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_read.cpp.o: CMakeFiles/xoxe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tigakub/Documents/Robotics/OAKonKhadas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_read.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_read.cpp.o -MF CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_read.cpp.o.d -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_read.cpp.o -c /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/group_sync_read.cpp

CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_read.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_read.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/group_sync_read.cpp > CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_read.cpp.i

CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_read.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_read.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/group_sync_read.cpp -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_read.cpp.s

CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_write.cpp.o: CMakeFiles/xoxe.dir/flags.make
CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_write.cpp.o: ../src/dynamixel_sdk/group_sync_write.cpp
CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_write.cpp.o: CMakeFiles/xoxe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tigakub/Documents/Robotics/OAKonKhadas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_write.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_write.cpp.o -MF CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_write.cpp.o.d -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_write.cpp.o -c /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/group_sync_write.cpp

CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_write.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_write.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/group_sync_write.cpp > CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_write.cpp.i

CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_write.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_write.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/group_sync_write.cpp -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_write.cpp.s

CMakeFiles/xoxe.dir/src/dynamixel_sdk/packet_handler.cpp.o: CMakeFiles/xoxe.dir/flags.make
CMakeFiles/xoxe.dir/src/dynamixel_sdk/packet_handler.cpp.o: ../src/dynamixel_sdk/packet_handler.cpp
CMakeFiles/xoxe.dir/src/dynamixel_sdk/packet_handler.cpp.o: CMakeFiles/xoxe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tigakub/Documents/Robotics/OAKonKhadas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/xoxe.dir/src/dynamixel_sdk/packet_handler.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xoxe.dir/src/dynamixel_sdk/packet_handler.cpp.o -MF CMakeFiles/xoxe.dir/src/dynamixel_sdk/packet_handler.cpp.o.d -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/packet_handler.cpp.o -c /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/packet_handler.cpp

CMakeFiles/xoxe.dir/src/dynamixel_sdk/packet_handler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xoxe.dir/src/dynamixel_sdk/packet_handler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/packet_handler.cpp > CMakeFiles/xoxe.dir/src/dynamixel_sdk/packet_handler.cpp.i

CMakeFiles/xoxe.dir/src/dynamixel_sdk/packet_handler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xoxe.dir/src/dynamixel_sdk/packet_handler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/packet_handler.cpp -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/packet_handler.cpp.s

CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler.cpp.o: CMakeFiles/xoxe.dir/flags.make
CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler.cpp.o: ../src/dynamixel_sdk/port_handler.cpp
CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler.cpp.o: CMakeFiles/xoxe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tigakub/Documents/Robotics/OAKonKhadas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler.cpp.o -MF CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler.cpp.o.d -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler.cpp.o -c /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/port_handler.cpp

CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/port_handler.cpp > CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler.cpp.i

CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/port_handler.cpp -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler.cpp.s

CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_arduino.cpp.o: CMakeFiles/xoxe.dir/flags.make
CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_arduino.cpp.o: ../src/dynamixel_sdk/port_handler_arduino.cpp
CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_arduino.cpp.o: CMakeFiles/xoxe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tigakub/Documents/Robotics/OAKonKhadas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_arduino.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_arduino.cpp.o -MF CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_arduino.cpp.o.d -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_arduino.cpp.o -c /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/port_handler_arduino.cpp

CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_arduino.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_arduino.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/port_handler_arduino.cpp > CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_arduino.cpp.i

CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_arduino.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_arduino.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/port_handler_arduino.cpp -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_arduino.cpp.s

CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_linux.cpp.o: CMakeFiles/xoxe.dir/flags.make
CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_linux.cpp.o: ../src/dynamixel_sdk/port_handler_linux.cpp
CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_linux.cpp.o: CMakeFiles/xoxe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tigakub/Documents/Robotics/OAKonKhadas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_linux.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_linux.cpp.o -MF CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_linux.cpp.o.d -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_linux.cpp.o -c /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/port_handler_linux.cpp

CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_linux.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_linux.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/port_handler_linux.cpp > CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_linux.cpp.i

CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_linux.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_linux.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/port_handler_linux.cpp -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_linux.cpp.s

CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_mac.cpp.o: CMakeFiles/xoxe.dir/flags.make
CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_mac.cpp.o: ../src/dynamixel_sdk/port_handler_mac.cpp
CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_mac.cpp.o: CMakeFiles/xoxe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tigakub/Documents/Robotics/OAKonKhadas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_mac.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_mac.cpp.o -MF CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_mac.cpp.o.d -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_mac.cpp.o -c /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/port_handler_mac.cpp

CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_mac.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_mac.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/port_handler_mac.cpp > CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_mac.cpp.i

CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_mac.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_mac.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/port_handler_mac.cpp -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_mac.cpp.s

CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_windows.cpp.o: CMakeFiles/xoxe.dir/flags.make
CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_windows.cpp.o: ../src/dynamixel_sdk/port_handler_windows.cpp
CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_windows.cpp.o: CMakeFiles/xoxe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tigakub/Documents/Robotics/OAKonKhadas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_windows.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_windows.cpp.o -MF CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_windows.cpp.o.d -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_windows.cpp.o -c /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/port_handler_windows.cpp

CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_windows.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_windows.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/port_handler_windows.cpp > CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_windows.cpp.i

CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_windows.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_windows.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/port_handler_windows.cpp -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_windows.cpp.s

CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol1_packet_handler.cpp.o: CMakeFiles/xoxe.dir/flags.make
CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol1_packet_handler.cpp.o: ../src/dynamixel_sdk/protocol1_packet_handler.cpp
CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol1_packet_handler.cpp.o: CMakeFiles/xoxe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tigakub/Documents/Robotics/OAKonKhadas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol1_packet_handler.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol1_packet_handler.cpp.o -MF CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol1_packet_handler.cpp.o.d -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol1_packet_handler.cpp.o -c /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/protocol1_packet_handler.cpp

CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol1_packet_handler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol1_packet_handler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/protocol1_packet_handler.cpp > CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol1_packet_handler.cpp.i

CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol1_packet_handler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol1_packet_handler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/protocol1_packet_handler.cpp -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol1_packet_handler.cpp.s

CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol2_packet_handler.cpp.o: CMakeFiles/xoxe.dir/flags.make
CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol2_packet_handler.cpp.o: ../src/dynamixel_sdk/protocol2_packet_handler.cpp
CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol2_packet_handler.cpp.o: CMakeFiles/xoxe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tigakub/Documents/Robotics/OAKonKhadas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol2_packet_handler.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol2_packet_handler.cpp.o -MF CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol2_packet_handler.cpp.o.d -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol2_packet_handler.cpp.o -c /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/protocol2_packet_handler.cpp

CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol2_packet_handler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol2_packet_handler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/protocol2_packet_handler.cpp > CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol2_packet_handler.cpp.i

CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol2_packet_handler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol2_packet_handler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tigakub/Documents/Robotics/OAKonKhadas/src/dynamixel_sdk/protocol2_packet_handler.cpp -o CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol2_packet_handler.cpp.s

# Object files for target xoxe
xoxe_OBJECTS = \
"CMakeFiles/xoxe.dir/main.cpp.o" \
"CMakeFiles/xoxe.dir/src/Xoxe.cpp.o" \
"CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_read.cpp.o" \
"CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_write.cpp.o" \
"CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_read.cpp.o" \
"CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_write.cpp.o" \
"CMakeFiles/xoxe.dir/src/dynamixel_sdk/packet_handler.cpp.o" \
"CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler.cpp.o" \
"CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_arduino.cpp.o" \
"CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_linux.cpp.o" \
"CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_mac.cpp.o" \
"CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_windows.cpp.o" \
"CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol1_packet_handler.cpp.o" \
"CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol2_packet_handler.cpp.o"

# External object files for target xoxe
xoxe_EXTERNAL_OBJECTS =

xoxe: CMakeFiles/xoxe.dir/main.cpp.o
xoxe: CMakeFiles/xoxe.dir/src/Xoxe.cpp.o
xoxe: CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_read.cpp.o
xoxe: CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_bulk_write.cpp.o
xoxe: CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_read.cpp.o
xoxe: CMakeFiles/xoxe.dir/src/dynamixel_sdk/group_sync_write.cpp.o
xoxe: CMakeFiles/xoxe.dir/src/dynamixel_sdk/packet_handler.cpp.o
xoxe: CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler.cpp.o
xoxe: CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_arduino.cpp.o
xoxe: CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_linux.cpp.o
xoxe: CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_mac.cpp.o
xoxe: CMakeFiles/xoxe.dir/src/dynamixel_sdk/port_handler_windows.cpp.o
xoxe: CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol1_packet_handler.cpp.o
xoxe: CMakeFiles/xoxe.dir/src/dynamixel_sdk/protocol2_packet_handler.cpp.o
xoxe: CMakeFiles/xoxe.dir/build.make
xoxe: CMakeFiles/xoxe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tigakub/Documents/Robotics/OAKonKhadas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable xoxe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/xoxe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/xoxe.dir/build: xoxe
.PHONY : CMakeFiles/xoxe.dir/build

CMakeFiles/xoxe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/xoxe.dir/cmake_clean.cmake
.PHONY : CMakeFiles/xoxe.dir/clean

CMakeFiles/xoxe.dir/depend:
	cd /home/tigakub/Documents/Robotics/OAKonKhadas/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tigakub/Documents/Robotics/OAKonKhadas /home/tigakub/Documents/Robotics/OAKonKhadas /home/tigakub/Documents/Robotics/OAKonKhadas/build /home/tigakub/Documents/Robotics/OAKonKhadas/build /home/tigakub/Documents/Robotics/OAKonKhadas/build/CMakeFiles/xoxe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/xoxe.dir/depend

