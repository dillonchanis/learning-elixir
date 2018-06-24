# Functions

## First-class

In Elixir, functions are first-class citizens. We can assign functios to variables inline using the `fn` keyword.

```elixir
square = fn(x) ->
  x * x
end
```

We can then invoke the function using dot `.` notation.

```elixir
square.(5)
25
```

**Why the dot notation?**
Make the code more explicit. When you encounter `square.(5)` you know it is an anonymous function being invoked somewhere whereas `square(5)` is a named function within the module.

## As arguments

We can pass functions as arguments to other functions.

```elixir
print_element = fn(x) -> IO.puts(x) end # define the lambda

Enum.each(
  [1, 2, 3],
  print_element # pass in lambda fn
)
```

And they don't need to be stored as variables...

```elixir
Enum.each(
  [1, 2, 3],
  fn(x) -> IO.puts(x) end
)
```

Elixir allows us to have a more compact lambda definition if used this way.

```elixir
Enum.each(
  [1, 2, 3],
  &IO.puts/1
)
```

The `&` operator is known as the *capture* operator. It takes the full function qualifier - a module name, function name, and an arity - and turns that function into a lambda that can be assigned to a variable.

```elixir
# we can also take this lambda
lambda = fn(x, y, z) -> x * y + z end

# and turn it into
lambda = &(&1 * &2 + &3)
```

Each argument is referred to via the `&n` placeholder, which identifies the nth argument of the function.

## Closures

A lambda can reference any variable from the outside scope.

```elixir
some_var = 1

my_function = fn() ->
  IO.puts(some_var)
end

my_function.()
# 5
```

If we have the reference to `my_function`, the variable `some_var` is accessible.  By holding a reference to a lambda, we also hold a reference to all the variables it uses even those from outside the scope.  This is known as a *closure*.