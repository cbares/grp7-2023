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
CMAKE_SOURCE_DIR = /home/imade/Bureau/PLT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/imade/Bureau/PLT/build2

# Utility rule file for code-coverage.

# Include any custom commands dependencies for this target.
include CMakeFiles/code-coverage.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/code-coverage.dir/progress.make

CMakeFiles/code-coverage: run_test.sh
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/imade/Bureau/PLT/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Resetting code coverage counters to zero."
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Processing code coverage counters and generating report."
	/usr/bin/lcov --gcov-tool /usr/bin/gcov -directory . --zerocounters
	/usr/bin/lcov --gcov-tool /usr/bin/gcov -c -i -d . -o code-coverage.base
	sh /home/imade/Bureau/PLT/build2/run_test.sh
	/usr/bin/lcov --gcov-tool /usr/bin/gcov --directory . --capture --output-file code-coverage.info
	/usr/bin/lcov --gcov-tool /usr/bin/gcov -a code-coverage.base -a code-coverage.info --output-file code-coverage.total
	/usr/bin/lcov --gcov-tool /usr/bin/gcov --remove code-coverage.total '/usr/*' '/home/imade/Bureau/PLT/test/*' '/home/imade/Bureau/PLT/extern/*' --output-file /home/imade/Bureau/PLT/build2/code-coverage.info.cleaned
	/usr/bin/genhtml -o code-coverage /home/imade/Bureau/PLT/build2/code-coverage.info.cleaned
	/usr/bin/cmake -E remove code-coverage.base code-coverage.total /home/imade/Bureau/PLT/build2/code-coverage.info.cleaned

code-coverage: CMakeFiles/code-coverage
code-coverage: CMakeFiles/code-coverage.dir/build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Lcov code coverage info report saved in code-coverage.info."
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Open ./code-coverage/index.html in your browser to view the coverage report."
.PHONY : code-coverage

# Rule to build all files generated by this target.
CMakeFiles/code-coverage.dir/build: code-coverage
.PHONY : CMakeFiles/code-coverage.dir/build

CMakeFiles/code-coverage.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/code-coverage.dir/cmake_clean.cmake
.PHONY : CMakeFiles/code-coverage.dir/clean

CMakeFiles/code-coverage.dir/depend:
	cd /home/imade/Bureau/PLT/build2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/imade/Bureau/PLT /home/imade/Bureau/PLT /home/imade/Bureau/PLT/build2 /home/imade/Bureau/PLT/build2 /home/imade/Bureau/PLT/build2/CMakeFiles/code-coverage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/code-coverage.dir/depend

