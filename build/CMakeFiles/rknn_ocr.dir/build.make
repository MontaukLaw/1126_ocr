# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /opt/cmake/bin/cmake

# The command to remove a file.
RM = /opt/cmake/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/marc/1126_ocr/rknn_ocr

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/marc/1126_ocr/rknn_ocr/build

# Include any dependencies generated for this target.
include CMakeFiles/rknn_ocr.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/rknn_ocr.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/rknn_ocr.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rknn_ocr.dir/flags.make

CMakeFiles/rknn_ocr.dir/demo.cpp.o: CMakeFiles/rknn_ocr.dir/flags.make
CMakeFiles/rknn_ocr.dir/demo.cpp.o: /home/marc/1126_ocr/rknn_ocr/demo.cpp
CMakeFiles/rknn_ocr.dir/demo.cpp.o: CMakeFiles/rknn_ocr.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marc/1126_ocr/rknn_ocr/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rknn_ocr.dir/demo.cpp.o"
	/opt/atk-dlrv1126-toolchain/usr/bin/arm-linux-gnueabihf-g++ --sysroot=/opt/atk-dlrv1126-toolchain/arm-buildroot-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rknn_ocr.dir/demo.cpp.o -MF CMakeFiles/rknn_ocr.dir/demo.cpp.o.d -o CMakeFiles/rknn_ocr.dir/demo.cpp.o -c /home/marc/1126_ocr/rknn_ocr/demo.cpp

CMakeFiles/rknn_ocr.dir/demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rknn_ocr.dir/demo.cpp.i"
	/opt/atk-dlrv1126-toolchain/usr/bin/arm-linux-gnueabihf-g++ --sysroot=/opt/atk-dlrv1126-toolchain/arm-buildroot-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marc/1126_ocr/rknn_ocr/demo.cpp > CMakeFiles/rknn_ocr.dir/demo.cpp.i

CMakeFiles/rknn_ocr.dir/demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rknn_ocr.dir/demo.cpp.s"
	/opt/atk-dlrv1126-toolchain/usr/bin/arm-linux-gnueabihf-g++ --sysroot=/opt/atk-dlrv1126-toolchain/arm-buildroot-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marc/1126_ocr/rknn_ocr/demo.cpp -o CMakeFiles/rknn_ocr.dir/demo.cpp.s

CMakeFiles/rknn_ocr.dir/src/DbNet.cpp.o: CMakeFiles/rknn_ocr.dir/flags.make
CMakeFiles/rknn_ocr.dir/src/DbNet.cpp.o: /home/marc/1126_ocr/rknn_ocr/src/DbNet.cpp
CMakeFiles/rknn_ocr.dir/src/DbNet.cpp.o: CMakeFiles/rknn_ocr.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marc/1126_ocr/rknn_ocr/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/rknn_ocr.dir/src/DbNet.cpp.o"
	/opt/atk-dlrv1126-toolchain/usr/bin/arm-linux-gnueabihf-g++ --sysroot=/opt/atk-dlrv1126-toolchain/arm-buildroot-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rknn_ocr.dir/src/DbNet.cpp.o -MF CMakeFiles/rknn_ocr.dir/src/DbNet.cpp.o.d -o CMakeFiles/rknn_ocr.dir/src/DbNet.cpp.o -c /home/marc/1126_ocr/rknn_ocr/src/DbNet.cpp

CMakeFiles/rknn_ocr.dir/src/DbNet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rknn_ocr.dir/src/DbNet.cpp.i"
	/opt/atk-dlrv1126-toolchain/usr/bin/arm-linux-gnueabihf-g++ --sysroot=/opt/atk-dlrv1126-toolchain/arm-buildroot-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marc/1126_ocr/rknn_ocr/src/DbNet.cpp > CMakeFiles/rknn_ocr.dir/src/DbNet.cpp.i

CMakeFiles/rknn_ocr.dir/src/DbNet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rknn_ocr.dir/src/DbNet.cpp.s"
	/opt/atk-dlrv1126-toolchain/usr/bin/arm-linux-gnueabihf-g++ --sysroot=/opt/atk-dlrv1126-toolchain/arm-buildroot-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marc/1126_ocr/rknn_ocr/src/DbNet.cpp -o CMakeFiles/rknn_ocr.dir/src/DbNet.cpp.s

CMakeFiles/rknn_ocr.dir/src/clipper.cpp.o: CMakeFiles/rknn_ocr.dir/flags.make
CMakeFiles/rknn_ocr.dir/src/clipper.cpp.o: /home/marc/1126_ocr/rknn_ocr/src/clipper.cpp
CMakeFiles/rknn_ocr.dir/src/clipper.cpp.o: CMakeFiles/rknn_ocr.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marc/1126_ocr/rknn_ocr/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/rknn_ocr.dir/src/clipper.cpp.o"
	/opt/atk-dlrv1126-toolchain/usr/bin/arm-linux-gnueabihf-g++ --sysroot=/opt/atk-dlrv1126-toolchain/arm-buildroot-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rknn_ocr.dir/src/clipper.cpp.o -MF CMakeFiles/rknn_ocr.dir/src/clipper.cpp.o.d -o CMakeFiles/rknn_ocr.dir/src/clipper.cpp.o -c /home/marc/1126_ocr/rknn_ocr/src/clipper.cpp

CMakeFiles/rknn_ocr.dir/src/clipper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rknn_ocr.dir/src/clipper.cpp.i"
	/opt/atk-dlrv1126-toolchain/usr/bin/arm-linux-gnueabihf-g++ --sysroot=/opt/atk-dlrv1126-toolchain/arm-buildroot-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marc/1126_ocr/rknn_ocr/src/clipper.cpp > CMakeFiles/rknn_ocr.dir/src/clipper.cpp.i

CMakeFiles/rknn_ocr.dir/src/clipper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rknn_ocr.dir/src/clipper.cpp.s"
	/opt/atk-dlrv1126-toolchain/usr/bin/arm-linux-gnueabihf-g++ --sysroot=/opt/atk-dlrv1126-toolchain/arm-buildroot-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marc/1126_ocr/rknn_ocr/src/clipper.cpp -o CMakeFiles/rknn_ocr.dir/src/clipper.cpp.s

CMakeFiles/rknn_ocr.dir/src/Crnn.cpp.o: CMakeFiles/rknn_ocr.dir/flags.make
CMakeFiles/rknn_ocr.dir/src/Crnn.cpp.o: /home/marc/1126_ocr/rknn_ocr/src/Crnn.cpp
CMakeFiles/rknn_ocr.dir/src/Crnn.cpp.o: CMakeFiles/rknn_ocr.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marc/1126_ocr/rknn_ocr/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/rknn_ocr.dir/src/Crnn.cpp.o"
	/opt/atk-dlrv1126-toolchain/usr/bin/arm-linux-gnueabihf-g++ --sysroot=/opt/atk-dlrv1126-toolchain/arm-buildroot-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rknn_ocr.dir/src/Crnn.cpp.o -MF CMakeFiles/rknn_ocr.dir/src/Crnn.cpp.o.d -o CMakeFiles/rknn_ocr.dir/src/Crnn.cpp.o -c /home/marc/1126_ocr/rknn_ocr/src/Crnn.cpp

CMakeFiles/rknn_ocr.dir/src/Crnn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rknn_ocr.dir/src/Crnn.cpp.i"
	/opt/atk-dlrv1126-toolchain/usr/bin/arm-linux-gnueabihf-g++ --sysroot=/opt/atk-dlrv1126-toolchain/arm-buildroot-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marc/1126_ocr/rknn_ocr/src/Crnn.cpp > CMakeFiles/rknn_ocr.dir/src/Crnn.cpp.i

CMakeFiles/rknn_ocr.dir/src/Crnn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rknn_ocr.dir/src/Crnn.cpp.s"
	/opt/atk-dlrv1126-toolchain/usr/bin/arm-linux-gnueabihf-g++ --sysroot=/opt/atk-dlrv1126-toolchain/arm-buildroot-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marc/1126_ocr/rknn_ocr/src/Crnn.cpp -o CMakeFiles/rknn_ocr.dir/src/Crnn.cpp.s

CMakeFiles/rknn_ocr.dir/src/OcrUtils.cpp.o: CMakeFiles/rknn_ocr.dir/flags.make
CMakeFiles/rknn_ocr.dir/src/OcrUtils.cpp.o: /home/marc/1126_ocr/rknn_ocr/src/OcrUtils.cpp
CMakeFiles/rknn_ocr.dir/src/OcrUtils.cpp.o: CMakeFiles/rknn_ocr.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marc/1126_ocr/rknn_ocr/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/rknn_ocr.dir/src/OcrUtils.cpp.o"
	/opt/atk-dlrv1126-toolchain/usr/bin/arm-linux-gnueabihf-g++ --sysroot=/opt/atk-dlrv1126-toolchain/arm-buildroot-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rknn_ocr.dir/src/OcrUtils.cpp.o -MF CMakeFiles/rknn_ocr.dir/src/OcrUtils.cpp.o.d -o CMakeFiles/rknn_ocr.dir/src/OcrUtils.cpp.o -c /home/marc/1126_ocr/rknn_ocr/src/OcrUtils.cpp

CMakeFiles/rknn_ocr.dir/src/OcrUtils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rknn_ocr.dir/src/OcrUtils.cpp.i"
	/opt/atk-dlrv1126-toolchain/usr/bin/arm-linux-gnueabihf-g++ --sysroot=/opt/atk-dlrv1126-toolchain/arm-buildroot-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marc/1126_ocr/rknn_ocr/src/OcrUtils.cpp > CMakeFiles/rknn_ocr.dir/src/OcrUtils.cpp.i

CMakeFiles/rknn_ocr.dir/src/OcrUtils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rknn_ocr.dir/src/OcrUtils.cpp.s"
	/opt/atk-dlrv1126-toolchain/usr/bin/arm-linux-gnueabihf-g++ --sysroot=/opt/atk-dlrv1126-toolchain/arm-buildroot-linux-gnueabihf/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marc/1126_ocr/rknn_ocr/src/OcrUtils.cpp -o CMakeFiles/rknn_ocr.dir/src/OcrUtils.cpp.s

# Object files for target rknn_ocr
rknn_ocr_OBJECTS = \
"CMakeFiles/rknn_ocr.dir/demo.cpp.o" \
"CMakeFiles/rknn_ocr.dir/src/DbNet.cpp.o" \
"CMakeFiles/rknn_ocr.dir/src/clipper.cpp.o" \
"CMakeFiles/rknn_ocr.dir/src/Crnn.cpp.o" \
"CMakeFiles/rknn_ocr.dir/src/OcrUtils.cpp.o"

# External object files for target rknn_ocr
rknn_ocr_EXTERNAL_OBJECTS =

rknn_ocr: CMakeFiles/rknn_ocr.dir/demo.cpp.o
rknn_ocr: CMakeFiles/rknn_ocr.dir/src/DbNet.cpp.o
rknn_ocr: CMakeFiles/rknn_ocr.dir/src/clipper.cpp.o
rknn_ocr: CMakeFiles/rknn_ocr.dir/src/Crnn.cpp.o
rknn_ocr: CMakeFiles/rknn_ocr.dir/src/OcrUtils.cpp.o
rknn_ocr: CMakeFiles/rknn_ocr.dir/build.make
rknn_ocr: /home/marc/1126_ocr/rknn_ocr/librknn_api/lib/librknn_api.so
rknn_ocr: CMakeFiles/rknn_ocr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/marc/1126_ocr/rknn_ocr/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable rknn_ocr"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rknn_ocr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rknn_ocr.dir/build: rknn_ocr
.PHONY : CMakeFiles/rknn_ocr.dir/build

CMakeFiles/rknn_ocr.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rknn_ocr.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rknn_ocr.dir/clean

CMakeFiles/rknn_ocr.dir/depend:
	cd /home/marc/1126_ocr/rknn_ocr/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marc/1126_ocr/rknn_ocr /home/marc/1126_ocr/rknn_ocr /home/marc/1126_ocr/rknn_ocr/build /home/marc/1126_ocr/rknn_ocr/build /home/marc/1126_ocr/rknn_ocr/build/CMakeFiles/rknn_ocr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rknn_ocr.dir/depend

