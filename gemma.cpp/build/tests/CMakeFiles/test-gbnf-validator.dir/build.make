# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

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
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lexchien/Documents/LLM/Gemma/gemma.cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/test-gbnf-validator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/test-gbnf-validator.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test-gbnf-validator.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test-gbnf-validator.dir/flags.make

tests/CMakeFiles/test-gbnf-validator.dir/codegen:
.PHONY : tests/CMakeFiles/test-gbnf-validator.dir/codegen

tests/CMakeFiles/test-gbnf-validator.dir/test-gbnf-validator.cpp.o: tests/CMakeFiles/test-gbnf-validator.dir/flags.make
tests/CMakeFiles/test-gbnf-validator.dir/test-gbnf-validator.cpp.o: /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/tests/test-gbnf-validator.cpp
tests/CMakeFiles/test-gbnf-validator.dir/test-gbnf-validator.cpp.o: tests/CMakeFiles/test-gbnf-validator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/test-gbnf-validator.dir/test-gbnf-validator.cpp.o"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/test-gbnf-validator.dir/test-gbnf-validator.cpp.o -MF CMakeFiles/test-gbnf-validator.dir/test-gbnf-validator.cpp.o.d -o CMakeFiles/test-gbnf-validator.dir/test-gbnf-validator.cpp.o -c /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/tests/test-gbnf-validator.cpp

tests/CMakeFiles/test-gbnf-validator.dir/test-gbnf-validator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test-gbnf-validator.dir/test-gbnf-validator.cpp.i"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/tests/test-gbnf-validator.cpp > CMakeFiles/test-gbnf-validator.dir/test-gbnf-validator.cpp.i

tests/CMakeFiles/test-gbnf-validator.dir/test-gbnf-validator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test-gbnf-validator.dir/test-gbnf-validator.cpp.s"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/tests/test-gbnf-validator.cpp -o CMakeFiles/test-gbnf-validator.dir/test-gbnf-validator.cpp.s

# Object files for target test-gbnf-validator
test__gbnf__validator_OBJECTS = \
"CMakeFiles/test-gbnf-validator.dir/test-gbnf-validator.cpp.o"

# External object files for target test-gbnf-validator
test__gbnf__validator_EXTERNAL_OBJECTS =

bin/test-gbnf-validator: tests/CMakeFiles/test-gbnf-validator.dir/test-gbnf-validator.cpp.o
bin/test-gbnf-validator: tests/CMakeFiles/test-gbnf-validator.dir/build.make
bin/test-gbnf-validator: common/libcommon.a
bin/test-gbnf-validator: /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib/libcurl.tbd
bin/test-gbnf-validator: bin/libllama.dylib
bin/test-gbnf-validator: bin/libggml.dylib
bin/test-gbnf-validator: bin/libggml-cpu.dylib
bin/test-gbnf-validator: bin/libggml-blas.dylib
bin/test-gbnf-validator: bin/libggml-metal.dylib
bin/test-gbnf-validator: bin/libggml-base.dylib
bin/test-gbnf-validator: tests/CMakeFiles/test-gbnf-validator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/test-gbnf-validator"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-gbnf-validator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/test-gbnf-validator.dir/build: bin/test-gbnf-validator
.PHONY : tests/CMakeFiles/test-gbnf-validator.dir/build

tests/CMakeFiles/test-gbnf-validator.dir/clean:
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/test-gbnf-validator.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test-gbnf-validator.dir/clean

tests/CMakeFiles/test-gbnf-validator.dir/depend:
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lexchien/Documents/LLM/Gemma/gemma.cpp /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/tests /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/tests /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/tests/CMakeFiles/test-gbnf-validator.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/test-gbnf-validator.dir/depend

