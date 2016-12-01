all: library
CC = g++
CFLAGS =-std=c++11 -W -Wall -Wextra -g
library: driver.o library.o
	$(CC) $(CFLAGS) library.o driver.o -o library 
driver.o: driver.cpp
	$(CC) $(CFLAGS) -c driver.cpp -o driver.o
library.o: library.cpp library.h
	$(CC) $(CFLAGS) -c library.cpp -o library.o
clean:
	rm *.o core submission *~ library 


