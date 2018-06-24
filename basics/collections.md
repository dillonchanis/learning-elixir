# Collections

## Lists

Lists in Elixir are simple collections of values which can include multiple types, think of Arrays in JavaScript.

```bash
iex > [1.0, "Dillon", :lists_are_cool]
[1.0, "Dillon", :lists_are_cool]
```

Lists in Elixir are linked lists. To perform any action on the list you must traverse it. This means most operations on list have an `O(n)` complexity. For example, it is faster to prepend than to append to a list.

### List Concatenation

To concatenate lists use the `++/2` operator. Where `/2` is the function's arity.

```bash
iex > [1, 2] ++ [3, 4, 5]
[1, 2, 3, 4, 5]
```

### List Subtraction

To subtract we can use the `--/2` operator.

```bash
iex > [1, 2, 3, 4] -- [3, 4]
[1, 2]
```

### Head and Tail

To get the **head**:

```bash
iex > hd [1, "Dillon", :cool]
1
```

To get the **tail**:

```bash
iex > tl [1, "Dillon", :cool]
["Dillon", :cool]
```

With pattern matching we can split both the head and tail in one go:

```bash
iex > [head | tail] = [1, "Dillon", :cool]
[1, "Dillon", :cool]

iex > head
1

iex > tail
["Dillon", :cool]
```

## Tuples

Tuples are similar to lists, but are stored contiguously in memory. This makes accessing their length faster than lists but manipulating them are slower.

```bash
iex > {1, "Dillon", :cool}
{1, "Dillon", :cool}
```

A common approach to tuples is to use them as a mechanism to return additional information from functions.

```bash
iex > File.read("path/to/file")
{:ok, "..."}
```

## Keyword Lists

Keyword lists and maps are the associative collections of Elixir. A keyword list is a list of two element tuples whose first element is an atom. Commonly used to pass options to functions.

```bash
iex > [foo: "bar", hello: "world"]
iex > [{:foo, "bar"}, {:hello, "world"}]
```

**3 Important Characteristics**
- Keys are atoms.
- Keys are ordered.
- Keys man not be unique.

## Maps

Maps are the "go-to" key-value store.  Think JavaScript objects. Keys can be any type and unordered.

```bash
iex > my_first_map = %{:foo => "bar", "hello" => :world}
%{:foo => "bar", "hello" => :world}

iex > my_first_map[:foo]
"bar"
```

### Additional Notes

- Variables can be keys.
- If a duplicate is added, it will replace the previous value

### Atom Maps

Maps where the keys are only atoms have a *special* syntax.

```elixir
${foo: "bar", hello: "world"}
```

We can access them like we do with JavaScript objects.

```elixir
map = ${foo: "bar", hello: "world"}
map.hello
```

To update a map:

```elixir
map = ${foo: "bar", hello: "world"}
${map | foo: "baz"}
```