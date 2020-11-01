defmodule DefaultParamTest do
  def param_test(a, b \\ "this is the default", c, d \\ "default") do
    IO.puts "a: #{a}, b: #{b}, c: #{c}, d: #{d}"
  end
end

DefaultParamTest.param_test("one", "two")
DefaultParamTest.param_test("one", "two", "three")
DefaultParamTest.param_test("one", "two", "three", "four")
