CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SRC=main.cpp
SOURCES= $(SRC)
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=main

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ -DSFML_STATIC \
	-Iinclude -Llib -pthread -lsfml-graphics -lsfml-system -lsfml-window -lsfml-network -lfreetype -lstdc++

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clear:
	rm -f src/*.o $(EXECUTABLE)

