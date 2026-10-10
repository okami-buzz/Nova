# NOVA Language Specification — v0.0.1

This describes the behavior implemented by the first prototype.

## Statements

Each statement occupies one line. Use `say` to evaluate and print an expression:

```nova
say 42
say 2 + 3 * 4
say "Hello, NOVA!"
```

## Values

Numbers may be integers or decimals. Strings use double quotes. This version does not support string concatenation or escape sequences.

## Operators

Precedence, highest to lowest:

1. Parentheses: `( ... )`
2. Multiplication and division: `*`, `/`
3. Addition and subtraction: `+`, `-`

Operators of the same precedence evaluate left-to-right.

## Errors

Malformed statements, unknown tokens, missing parentheses and division by zero produce an error message with a line number. The process exits with a non-zero status on error.

## Reserved word

- `say`

## Not yet supported

Variables, booleans, comparisons, conditions, loops, functions, imports, comments, multiline expressions and string concatenation.
