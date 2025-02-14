CC=gcc

INC_DIR := ./inc ./core
SRC_DIR := ./src ./core

CFLAGS= $(foreach INC_DIR, $(INC_DIR), -I$(INC_DIR))

VPATH = $(foreach SRC_DIR, $(SRC_DIR), $(SRC_DIR))

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

all: main.o lib.o core.o
	gcc main.o lib.o core.o -o main.exe

clean:
	rm -f *.o *.exe

.PHONY: clean all

