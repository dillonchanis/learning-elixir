# Provide type information for your functions
# compensate for lack of type system
# can be analyzed with a tool called `dialyzer`

defmodule Circle do
  @pi 3.14

  @spec area(number) :: number  # type spec. for area/1
  def area(r), do: r*r*@pi

  @spec circumference(number) :: number  #type spec. for circumference/1
  def circumference(r), do: 2*r*@pi
end