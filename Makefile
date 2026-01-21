CC = gcc
CFLAGS = -IC:/SDL3/include
LDFLAGS = -LC:/SDL3/lib -lSDL3
TARGET = main.exe
SRC = main.c

all:
	$(CC) $(SRC) -o $(TARGET) $(CFLAGS) $(LDFLAGS)

clean:
	del $(TARGET)
