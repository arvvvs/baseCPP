all: library 
CC := g++
CFLAGS := -Wall -Wextra -W -g -std=c++11
CPP := library
driver := driver
$(CPP): $(driver).o $(CPP).o
	$(CC) $(CFLAGS) $(CPP).o $(driver).o -o $(CPP)
$(driver).o: $(driver).cpp
	$(CC) $(CFLAGS) -c  $(driver).cpp -o $(driver).o
$(CPP).o: $(CPP).cpp $(CPP).h
	$(CC) $(CFLAGS) -c  $(CPP).cpp -o $(CPP).o 
clean:
	rm *.o $(all) *~

