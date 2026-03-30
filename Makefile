SOURCES = iblt.cpp murmurhash3.cpp utilstrencodings.cpp
OBJECTS = $(SOURCES:.cpp=.o)

TARGET = libiblt.a

CC = g++ -O3 -fPIC -Wno-c++11-extensions

all: $(TARGET)

clean:
	rm -f $(OBJECTS) $(TARGET)

%.o: %.cpp iblt.h
	$(CC) $(FLAGS) -c $<

$(TARGET): $(OBJECTS)
	ar rcs $@ $^
