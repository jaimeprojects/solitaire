# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_COMMAND = /usr/local/lib64/python2.7/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /usr/local/lib64/python2.7/site-packages/cmake/data/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ec2-user/environment

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ec2-user/environment

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/lib64/python2.7/site-packages/cmake/data/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/local/lib64/python2.7/site-packages/cmake/data/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ec2-user/environment/CMakeFiles /home/ec2-user/environment/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ec2-user/environment/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named solCompiled

# Build rule for target.
solCompiled: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 solCompiled
.PHONY : solCompiled

# fast build rule for target.
solCompiled/fast:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/build
.PHONY : solCompiled/fast

card.o: card.cpp.o

.PHONY : card.o

# target to build an object file
card.cpp.o:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/card.cpp.o
.PHONY : card.cpp.o

card.i: card.cpp.i

.PHONY : card.i

# target to preprocess a source file
card.cpp.i:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/card.cpp.i
.PHONY : card.cpp.i

card.s: card.cpp.s

.PHONY : card.s

# target to generate assembly for a file
card.cpp.s:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/card.cpp.s
.PHONY : card.cpp.s

deck.o: deck.cpp.o

.PHONY : deck.o

# target to build an object file
deck.cpp.o:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/deck.cpp.o
.PHONY : deck.cpp.o

deck.i: deck.cpp.i

.PHONY : deck.i

# target to preprocess a source file
deck.cpp.i:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/deck.cpp.i
.PHONY : deck.cpp.i

deck.s: deck.cpp.s

.PHONY : deck.s

# target to generate assembly for a file
deck.cpp.s:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/deck.cpp.s
.PHONY : deck.cpp.s

foundationPile.o: foundationPile.cpp.o

.PHONY : foundationPile.o

# target to build an object file
foundationPile.cpp.o:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/foundationPile.cpp.o
.PHONY : foundationPile.cpp.o

foundationPile.i: foundationPile.cpp.i

.PHONY : foundationPile.i

# target to preprocess a source file
foundationPile.cpp.i:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/foundationPile.cpp.i
.PHONY : foundationPile.cpp.i

foundationPile.s: foundationPile.cpp.s

.PHONY : foundationPile.s

# target to generate assembly for a file
foundationPile.cpp.s:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/foundationPile.cpp.s
.PHONY : foundationPile.cpp.s

pile.o: pile.cpp.o

.PHONY : pile.o

# target to build an object file
pile.cpp.o:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/pile.cpp.o
.PHONY : pile.cpp.o

pile.i: pile.cpp.i

.PHONY : pile.i

# target to preprocess a source file
pile.cpp.i:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/pile.cpp.i
.PHONY : pile.cpp.i

pile.s: pile.cpp.s

.PHONY : pile.s

# target to generate assembly for a file
pile.cpp.s:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/pile.cpp.s
.PHONY : pile.cpp.s

solDriver.o: solDriver.cpp.o

.PHONY : solDriver.o

# target to build an object file
solDriver.cpp.o:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/solDriver.cpp.o
.PHONY : solDriver.cpp.o

solDriver.i: solDriver.cpp.i

.PHONY : solDriver.i

# target to preprocess a source file
solDriver.cpp.i:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/solDriver.cpp.i
.PHONY : solDriver.cpp.i

solDriver.s: solDriver.cpp.s

.PHONY : solDriver.s

# target to generate assembly for a file
solDriver.cpp.s:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/solDriver.cpp.s
.PHONY : solDriver.cpp.s

tableau.o: tableau.cpp.o

.PHONY : tableau.o

# target to build an object file
tableau.cpp.o:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/tableau.cpp.o
.PHONY : tableau.cpp.o

tableau.i: tableau.cpp.i

.PHONY : tableau.i

# target to preprocess a source file
tableau.cpp.i:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/tableau.cpp.i
.PHONY : tableau.cpp.i

tableau.s: tableau.cpp.s

.PHONY : tableau.s

# target to generate assembly for a file
tableau.cpp.s:
	$(MAKE) -f CMakeFiles/solCompiled.dir/build.make CMakeFiles/solCompiled.dir/tableau.cpp.s
.PHONY : tableau.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... solCompiled"
	@echo "... card.o"
	@echo "... card.i"
	@echo "... card.s"
	@echo "... deck.o"
	@echo "... deck.i"
	@echo "... deck.s"
	@echo "... foundationPile.o"
	@echo "... foundationPile.i"
	@echo "... foundationPile.s"
	@echo "... pile.o"
	@echo "... pile.i"
	@echo "... pile.s"
	@echo "... solDriver.o"
	@echo "... solDriver.i"
	@echo "... solDriver.s"
	@echo "... tableau.o"
	@echo "... tableau.i"
	@echo "... tableau.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
