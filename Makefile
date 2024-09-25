# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_SOURCE_DIR = /home/timurnogaev/unix-shell-and-utils-TimurN4/OOP_2Laba

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/timurnogaev/unix-shell-and-utils-TimurN4/OOP_2Laba

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	/usr/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test
.PHONY : test/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"gmock\" \"gtest\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components
.PHONY : list_install_components/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/timurnogaev/unix-shell-and-utils-TimurN4/OOP_2Laba/CMakeFiles /home/timurnogaev/unix-shell-and-utils-TimurN4/OOP_2Laba//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/timurnogaev/unix-shell-and-utils-TimurN4/OOP_2Laba/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named gtest_lib

# Build rule for target.
gtest_lib: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 gtest_lib
.PHONY : gtest_lib

# fast build rule for target.
gtest_lib/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/gtest_lib.dir/build.make CMakeFiles/gtest_lib.dir/build
.PHONY : gtest_lib/fast

#=============================================================================
# Target rules for targets named gtest_exe

# Build rule for target.
gtest_exe: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 gtest_exe
.PHONY : gtest_exe

# fast build rule for target.
gtest_exe/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/gtest_exe.dir/build.make CMakeFiles/gtest_exe.dir/build
.PHONY : gtest_exe/fast

#=============================================================================
# Target rules for targets named tests

# Build rule for target.
tests: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 tests
.PHONY : tests

# fast build rule for target.
tests/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/build
.PHONY : tests/fast

#=============================================================================
# Target rules for targets named gmock

# Build rule for target.
gmock: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 gmock
.PHONY : gmock

# fast build rule for target.
gmock/fast:
	$(MAKE) $(MAKESILENT) -f _deps/googletest-build/googlemock/CMakeFiles/gmock.dir/build.make _deps/googletest-build/googlemock/CMakeFiles/gmock.dir/build
.PHONY : gmock/fast

#=============================================================================
# Target rules for targets named gmock_main

# Build rule for target.
gmock_main: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 gmock_main
.PHONY : gmock_main

# fast build rule for target.
gmock_main/fast:
	$(MAKE) $(MAKESILENT) -f _deps/googletest-build/googlemock/CMakeFiles/gmock_main.dir/build.make _deps/googletest-build/googlemock/CMakeFiles/gmock_main.dir/build
.PHONY : gmock_main/fast

#=============================================================================
# Target rules for targets named gtest

# Build rule for target.
gtest: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 gtest
.PHONY : gtest

# fast build rule for target.
gtest/fast:
	$(MAKE) $(MAKESILENT) -f _deps/googletest-build/googletest/CMakeFiles/gtest.dir/build.make _deps/googletest-build/googletest/CMakeFiles/gtest.dir/build
.PHONY : gtest/fast

#=============================================================================
# Target rules for targets named gtest_main

# Build rule for target.
gtest_main: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 gtest_main
.PHONY : gtest_main

# fast build rule for target.
gtest_main/fast:
	$(MAKE) $(MAKESILENT) -f _deps/googletest-build/googletest/CMakeFiles/gtest_main.dir/build.make _deps/googletest-build/googletest/CMakeFiles/gtest_main.dir/build
.PHONY : gtest_main/fast

main.o: main.cpp.o
.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/gtest_exe.dir/build.make CMakeFiles/gtest_exe.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i
.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/gtest_exe.dir/build.make CMakeFiles/gtest_exe.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s
.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/gtest_exe.dir/build.make CMakeFiles/gtest_exe.dir/main.cpp.s
.PHONY : main.cpp.s

src/oct.o: src/oct.cpp.o
.PHONY : src/oct.o

# target to build an object file
src/oct.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/gtest_lib.dir/build.make CMakeFiles/gtest_lib.dir/src/oct.cpp.o
.PHONY : src/oct.cpp.o

src/oct.i: src/oct.cpp.i
.PHONY : src/oct.i

# target to preprocess a source file
src/oct.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/gtest_lib.dir/build.make CMakeFiles/gtest_lib.dir/src/oct.cpp.i
.PHONY : src/oct.cpp.i

src/oct.s: src/oct.cpp.s
.PHONY : src/oct.s

# target to generate assembly for a file
src/oct.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/gtest_lib.dir/build.make CMakeFiles/gtest_lib.dir/src/oct.cpp.s
.PHONY : src/oct.cpp.s

test/test_oct.o: test/test_oct.cpp.o
.PHONY : test/test_oct.o

# target to build an object file
test/test_oct.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/test/test_oct.cpp.o
.PHONY : test/test_oct.cpp.o

test/test_oct.i: test/test_oct.cpp.i
.PHONY : test/test_oct.i

# target to preprocess a source file
test/test_oct.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/test/test_oct.cpp.i
.PHONY : test/test_oct.cpp.i

test/test_oct.s: test/test_oct.cpp.s
.PHONY : test/test_oct.s

# target to generate assembly for a file
test/test_oct.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/test/test_oct.cpp.s
.PHONY : test/test_oct.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... install"
	@echo "... install/local"
	@echo "... install/strip"
	@echo "... list_install_components"
	@echo "... rebuild_cache"
	@echo "... test"
	@echo "... gmock"
	@echo "... gmock_main"
	@echo "... gtest"
	@echo "... gtest_exe"
	@echo "... gtest_lib"
	@echo "... gtest_main"
	@echo "... tests"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... src/oct.o"
	@echo "... src/oct.i"
	@echo "... src/oct.s"
	@echo "... test/test_oct.o"
	@echo "... test/test_oct.i"
	@echo "... test/test_oct.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
