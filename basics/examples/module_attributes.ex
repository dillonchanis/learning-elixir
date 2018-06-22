# Used for compile-time constants or,
# register attr. which can then be queried in runtime
# Elixir provides some by default like @moduledoc and @doc

# We can get documentation for a function via
# Code.get_docs(Circle, :moduledoc)
# also we can use iex help
# iex > h Circle
# https://github.com/elixir-lang/ex_doc

defmodule Circle do
  @moduledoc """Implements basic circle arithmetic"""
  @pi 3.14 # define module attribute

  @doc "Computes the area of a circle."
  def area(r), do: r*r*@pi

  @doc "Computes the circumference of a circle."
  def circumference(r), do: 2*r*@pi
end