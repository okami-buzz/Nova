CC = clang
CFLAGS = -std=c11 -Wall -Wextra -Wpedantic -Werror -O2
SRC = src/main.c src/lexer.c src/parser.c src/runtime.c
OUT = nova

.PHONY: all clean test

all: $(OUT)

$(OUT): $(SRC) src/lexer.h src/parser.h src/runtime.h
	$(CC) $(CFLAGS) $(SRC) -o $(OUT) -lm

test: $(OUT)
	sh tests/run_tests.sh

clean:
	rm -f $(OUT) *.o
