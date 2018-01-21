# define some Makefile variables for the compiler and compiler flags
# to use Makefile variables later in the Makefile: $()
#
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
#
CC = gcc
CFLAGS  = -g -Wall

# name exe here
default: main 

main:  main.o BinaryTrees.o  
	$(CC) $(CFLAGS) -o main main.o BinaryTrees.o

# object files here
main.o: main.c BinaryTrees.c BinaryTrees.h
	$(CC) $(CFLAGS) -c main.c
BinaryTrees.o: BinaryTrees.c BinaryTrees.h
	$(CC) $(CFLAGS) -c BinaryTrees.c

# clean removes all .o and exe files
clean: 
	$(RM) main *.o *~
