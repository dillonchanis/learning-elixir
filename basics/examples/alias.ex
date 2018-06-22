defmodule MyModule do
  alias IO, as: MyIO # set alias for IO

  def my_function do
    MyIO.puts("Calling imported function.") # calls via alias
  end
end