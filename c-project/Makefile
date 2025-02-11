CC = gcc
CFLAGS = -Wall -Wextra -pedantic -fPIC
LDFLAGS = -shared

all: libsum.so 

sum.o: sum.c sum.h
	$(CC) $(CFLAGS) -c sum.c

libsum.so: sum.o
	$(CC) $(LDFLAGS) -o libsum.so sum.o

clean:
	rm -f *.o *.so
