SOURCES = iblt.cpp murmurhash3.cpp utilstrencodings.cpp
OBJECTS = $(SOURCES:.cpp=.o)

TARGET = iblt

CC = g++ -O3  -fPIC -Wno-c++11-extensions


all: $(TARGET)

clean:
	rm -f $(OBJECTS) $(TARGET) libiblt.so

%.o: %.cpp iblt.h
	$(CC)  $(FLAGS) -c  $<

iblt: $(OBJECTS)
	g++ $(OBJECTS) $(FLAGS) -shared -o libiblt.so

