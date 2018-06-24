# Elixir Basics

## Interactive Shell

To run the interactive shell in your terminal:

```bash
iex
```

## Basic Constructs / Data Types

### Variables

Variables must start with a lowercase alphabetic character or an underscore.

```elixir
my_name = "Dillon"
```

### Strings

Strings are surrounded by double quotes `""`.

```elixir
"Hello World"
```

**Concatenation**
You can join them together with `<>` operator.

```bash
iex > "Hello " <> "World"
"Hello World"
```

**Interpolation**
We can perform string interpolation with `#{...}`

```bash
iex > name = "Dillon"
iex > "Hello #{name}"
"Hello Dillon"ß
```

### Integers

```elixir
255
```

Support for binary, octal, and hexadecimal numbers comes built in:

```bash
iex > 0b0110
6
```

### Floats

In Elixir, floating point numbers require a decimal after at least one digit; they have 64-bit double precision and support `e` for exponent values:

```bash
iex > 2.99
```

### Booleans

Elixir supports `true` and `false` as booleans; everything is truthy except for `false` and `nil`.

### Atoms

Atoms are constants. Their name is their value.

```elixir 
:this_is_a_constant

:foo
```

```bash
iex > :foo == :bar
false
```

The Booleans `true` and `false` are actually atoms `:true` and `:false`.

## Operations

### Arithmetic

Elixir supports basic operators `+`, `-`, `*`, and `/` where `/` always returns a float.

If you need an integer or remainder from a division use the built-in `div()` and `rem()` functions.

### Boolean

Elixir provides `||`, `&&`, and `!` operators.

### Comparison

- `==` and `===`
- `!=` and `!==`
- `<` and `>`
- `<=` and `>=`

Strict comparison use the `===`

```bash
iex > 2 == 2.0
true

iex > 2 === 2.0
false
```
