# NOVA v0.0.1

NOVA is an experimental programming language designed around readable syntax and a small, extensible core. This is an early prototype, not a finished general-purpose language.

## What works in v0.0.1

- `say` statements
- Integer and decimal numbers
- `+`, `-`, `*`, `/` and parentheses
- Double-quoted strings
- Line-aware error messages
- A C implementation split into lexer, parser and runtime files
- A basic automated test suite

### Example

```nova
say 10 + 20
say (8 + 2) * 3
say "Hello from NOVA!"
```

Output:

```text
30
30
Hello from NOVA!
```

## Build on Android using Termux

Install the required tools if needed:

```sh
pkg update
pkg install clang git make
```

Extract this folder, enter it, then run:

```sh
cd NOVA-v0.0.1
make
./nova examples/hello.nova
make test
```

## Put the project on GitHub

1. Create an empty repository on GitHub named `NOVA` (do not initialize it with a README, license or `.gitignore`).
2. In this folder, run the commands below, replacing `YOUR-USERNAME` with your GitHub username:

```sh
git init
git add .
git commit -m "NOVA v0.0.1: initial C interpreter"
git branch -M main
git remote add origin https://github.com/YOUR-USERNAME/NOVA.git
git push -u origin main
git tag -a v0.0.1 -m "NOVA v0.0.1"
git push origin v0.0.1
```

For each future version, continue editing this same repository. Commit tested changes and create a new tag (for example `v0.0.2`); don't restart the project from scratch.

## Current limitations

- One statement per line
- No variables, conditions, loops, functions, imports or user input yet
- No string concatenation or escape sequences
- Division by zero is an error
- Arithmetic uses C `double`; this is a prototype, not suitable for precision-critical calculations
- Syntax may evolve before v1.0.0

## Layout

- `src/main.c` — command-line entry point and file reader
- `src/lexer.c`, `src/lexer.h` — tokenization
- `src/parser.c`, `src/parser.h` — expression parsing
- `src/runtime.c`, `src/runtime.h` — output
- `tests/` — smoke tests
- `LANGUAGE_SPEC.md` — implemented syntax
- `ROADMAP.md` — planned milestones
- `CHANGELOG.md` — release history
