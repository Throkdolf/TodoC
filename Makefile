# Makefile for Todo Project with raylib
# Compiler
CC = gcc

# raylib shell command
RAYLIB_PREFIX = $(shell brew --prefix raylib)

# Compiler flags
CFLAGS = -I$(RAYLIB_PREFIX)/include

# Linker flags
LDFLAGS = -L$(RAYLIB_PREFIX)/lib -lraylib

# Source folder
SRC_DIR = src

# Source file
SRC = $(SRC_DIR)/todo.c

# Output executable
OUT = todo

# Default target
all: $(OUT)

# Link and compile

$(OUT): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(OUT) $(LDFLAGS)

# Clean target
clean:
	rm -f $(OUT)

.PHONY: all clean
