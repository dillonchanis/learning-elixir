defmodule MyModule do
  import IO # imports the module

  def my_function do
    puts "Calling imported function." # instead of IO.puts since we imported
  end
end