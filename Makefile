CC=gcc
SRC=src
TEST=test

LFLAGS=
DEBUG=-g
CFLAGS=-Wall -static -std=c99
SOURCE=$(shell find $(SRC) -type f -name '*.c')
OBJS=$(SOURCE:.c=.o)
TESTS=$(shell find $(TEST) -type f -name 'test_*.c')
TESTS_OBJS=$(TESTS:.c=.o)

.PHONY: build debug clean

build: app
test: CFLAGS += $(DEBUG)
test: app_test

debug: CFLAGS += $(DEBUG)
debug: clean build clean

app: $(OBJS)
	@$(CC) -o bin/app $^ $(LFLAGS) $(CFLAGS)

app_test: $(TESTS_OBJS)
	@$(CC) -o bin/test $^ $(LFLAGS) $(CFLAGS)

%.o: %.c
	@$(CC) -c $(CFLAGS) $< -o $@

clean:
	@find . -name '*.o' -delete
	@rm -f bin/app bin/test
