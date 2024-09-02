flags=-O2 -Wall -std=c2x

all: clean pakhet

pakhet: pakhet.o
	cc ${flags} $^ -o $@ ${ldflags}

pakhet.o: pakhet.c
	cc ${flags} -c $^

clean:
	rm -f *.o pakhet
