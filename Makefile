CC = gcc
CFLAGS = -std=c11 -Wall -Wextra -Werror -pedantic -O2

COMMON = stack.c infix_postfix.c

.PHONY: all test clean

all: infix_postfix

infix_postfix: main.c $(COMMON) stack.h infix_postfix.h
	$(CC) $(CFLAGS) -o $@ main.c $(COMMON)

test_infix_postfix: test_infix_postfix.c $(COMMON) stack.h infix_postfix.h
	$(CC) $(CFLAGS) -o $@ test_infix_postfix.c $(COMMON)

test: test_infix_postfix
	./test_infix_postfix

clean:
	rm -f infix_postfix test_infix_postfix
