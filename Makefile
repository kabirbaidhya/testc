CC=gcc
SRC=src

LFLAGS=
DEBUG=-g
CFLAGS=-Wall -static -std=c99
SOURCE=$(shell find $(SRC) -type f -name '*.c')
OBJS=$(SOURCE:.c=.o)

.PHONY: build debug clean

build: app

debug: CFLAGS += $(DEBUG)
debug: clean build clean

app: $(OBJS)
	$(CC) -o bin/app $^ $(LFLAGS) $(CFLAGS)

%.o : %.c
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	@find $(SRC) -name '*.o' -delete
	@rm -f bin/app
