# Infix to Postfix Converter (C, Multi-file)

## Files
- `main.c`: reads input and prints postfix output.
- `infix_postfix.c/.h`: conversion logic and public API.
- `stack.c/.h`: reusable character stack.
- `test_infix_postfix.c`: valid and invalid test cases.
- `Makefile`: build and test commands.

## Supported syntax
Single-character alphanumeric operands, operators `+ - * / ^`, parentheses, and whitespace.
`^` is right-associative. Multiplication/division and addition/subtraction are left-associative.
Multi-digit numbers and multi-character identifiers are **not tokenized**; each character is treated as a separate operand.

## Build and run (Linux/macOS, or Windows with GCC/MinGW)
```sh
make
./infix_postfix
```
Example input: `(A + B) * (C - D) ^ E`
Expected output: `AB+CD-E^*`

## Run tests
```sh
make test
```
The test program exits with status 0 only if every included test passes.
