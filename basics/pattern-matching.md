# Pattern Matching

Allows us to match simple values, data structures, and functions.

## Match Operator

The `=` operator is actually a match operator, comparable to the equal sign in algebra. Writing it turns the whole expression into an equation and makes Elixir match the values on the left hand with the values on the right hand. If the match succeeds, it returns the value of the equation.

```bash
iex > x = 1
1

iex > 1 = x
1

iex > 2 = x
** (MatchError) no match of right hand side value: 1
```

With collections:

```bash
# Lists
iex > list = [1, 2, 3]
iex > [1, 2, 3] = list
[1, 2, 3]
iex > [] = list
** (MatchError) ...

iex > [1 | tail] = list
[1, 2, 3]
iex > tail
[2, 3]
iex > [2 | _] = list
** (MatchError) ...

# Tuples
iex > {:ok, value} = {:ok, "Successful!"}
{:ok, "Successful!"}
iex > value
"Successful!"
iex > {:ok, value} = {:error}
** (MatchError) ...
```

## Pin Operator

The match operator performs assignment when the left side of the match includes a variable. In some cases, this variable rebinding is undesirable.  For situations like this, we can use the pin operator `^`.

When we pin a variable we match on the existing value rather than rebinding to a new one.

```bash
iex > x = 1
1
iex > ^x = 2
** (MatchError) ...
iex > {x, ^x} = {2, 1}
{2, 1}
iex > x
2
```

In map keys and function clauses:

```bash
iex > key = "hello"
"hello"

iex > %{^key => value} = %{"hello" => "world"}
%{"hello" => "world"}

iex > value
"world"

iex > %{^key => value} = %{:hello => "world"}
** (MatchError) ...
```