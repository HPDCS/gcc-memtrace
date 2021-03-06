CXX = g++
CC = gcc
# Flags for the C++ compiler: C++11 and all the warnings
CXXFLAGS = -std=c++11 -Wall -fno-rtti -g
# Workaround for an issue of -std=c++11 and the current GCC headers
CXXFLAGS += -Wno-literal-suffix

# Determine the plugin-dir and add it to the flags
PLUGINDIR=$(shell $(CXX) -print-file-name=plugin)
CXXFLAGS += -I$(PLUGINDIR)/include

LDFLAGS = -std=c++11

TEST=test/test.c

# top level goal: build our plugin as a shared library
all: memtrace_plugin.so

memtrace_plugin.so: memtrace_plugin.o
	$(CXX) $(LDFLAGS) -shared -o $@ $<

memtrace_plugin.o : memtrace_plugin.c
	$(CXX) $(CXXFLAGS) -fPIC -c -o $@ $<

clean:
	rm -f memtrace_plugin.so memtrace_plugin.o

check: memtrace_plugin.so test/test.c
	$(CC) -fplugin=./memtrace_plugin.so -O3 -g $(TEST) -c -o test.o
	$(CC) -mgeneral-regs-only test.o memtrace.c -lm -o program

.PHONY: all clean check
