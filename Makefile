.PHONY: all test clean

TARGET=md5.so

all: $(TARGET)

CFLAGS = $(CFLAG)
CFLAGS += -g3 -O2 -rdynamic -Wall -fPIC -shared

$(TARGET): md5lib.c md5.c compat-5.2.c
	gcc $(CFLAGS) -o $@ $^

clean:
	rm $(TARGET)

test:
	lua test.lua
