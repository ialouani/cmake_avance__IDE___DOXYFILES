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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/local/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu20/Bureau/TD5/cmake_avance__IDE___DOXYFILES

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu20/Bureau/TD5/cmake_avance__IDE___DOXYFILES/build

# Include any dependencies generated for this target.
include CMakeFiles/hash_static.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hash_static.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hash_static.dir/flags.make

CMakeFiles/hash_static.dir/hash.c.o: CMakeFiles/hash_static.dir/flags.make
CMakeFiles/hash_static.dir/hash.c.o: ../hash.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu20/Bureau/TD5/cmake_avance__IDE___DOXYFILES/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/hash_static.dir/hash.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/hash_static.dir/hash.c.o   -c /home/ubuntu20/Bureau/TD5/cmake_avance__IDE___DOXYFILES/hash.c

CMakeFiles/hash_static.dir/hash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hash_static.dir/hash.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ubuntu20/Bureau/TD5/cmake_avance__IDE___DOXYFILES/hash.c > CMakeFiles/hash_static.dir/hash.c.i

CMakeFiles/hash_static.dir/hash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hash_static.dir/hash.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ubuntu20/Bureau/TD5/cmake_avance__IDE___DOXYFILES/hash.c -o CMakeFiles/hash_static.dir/hash.c.s

CMakeFiles/hash_static.dir/hash.c.o.requires:
.PHONY : CMakeFiles/hash_static.dir/hash.c.o.requires

CMakeFiles/hash_static.dir/hash.c.o.provides: CMakeFiles/hash_static.dir/hash.c.o.requires
	$(MAKE) -f CMakeFiles/hash_static.dir/build.make CMakeFiles/hash_static.dir/hash.c.o.provides.build
.PHONY : CMakeFiles/hash_static.dir/hash.c.o.provides

CMakeFiles/hash_static.dir/hash.c.o.provides.build: CMakeFiles/hash_static.dir/hash.c.o

# Object files for target hash_static
hash_static_OBJECTS = \
"CMakeFiles/hash_static.dir/hash.c.o"

# External object files for target hash_static
hash_static_EXTERNAL_OBJECTS =

libhash_static.a: CMakeFiles/hash_static.dir/hash.c.o
libhash_static.a: CMakeFiles/hash_static.dir/build.make
libhash_static.a: CMakeFiles/hash_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libhash_static.a"
	$(CMAKE_COMMAND) -P CMakeFiles/hash_static.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hash_static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hash_static.dir/build: libhash_static.a
.PHONY : CMakeFiles/hash_static.dir/build

CMakeFiles/hash_static.dir/requires: CMakeFiles/hash_static.dir/hash.c.o.requires
.PHONY : CMakeFiles/hash_static.dir/requires

CMakeFiles/hash_static.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hash_static.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hash_static.dir/clean

CMakeFiles/hash_static.dir/depend:
	cd /home/ubuntu20/Bureau/TD5/cmake_avance__IDE___DOXYFILES/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu20/Bureau/TD5/cmake_avance__IDE___DOXYFILES /home/ubuntu20/Bureau/TD5/cmake_avance__IDE___DOXYFILES /home/ubuntu20/Bureau/TD5/cmake_avance__IDE___DOXYFILES/build /home/ubuntu20/Bureau/TD5/cmake_avance__IDE___DOXYFILES/build /home/ubuntu20/Bureau/TD5/cmake_avance__IDE___DOXYFILES/build/CMakeFiles/hash_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hash_static.dir/depend

