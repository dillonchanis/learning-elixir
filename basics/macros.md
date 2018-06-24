# Macros

Perform powerful code transformations in compile time.

A *macro* consists of Elixir code that can change the semantics of the input code.

```elixir
unless some_expression do
  block_1
else
  block_2
end
```

`unless` isn't a special keyword. It's a macro that transforms the input code into something like this:

```elixir
if some_expression do
  block_2
else
  block_1
end
```

Many parts of Elixir are written in Elixir with the help of macros. This includes the `unless` or `if` constructs, and also `defmodule` and `def`.