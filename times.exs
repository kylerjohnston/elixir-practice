defmodule Times do
  def double(n), do: n * 2

  def triple(n), do: n * 3

  def quadruple(n), do: Times.double(Times.double(n))
end

IO.puts "Doubled: #{Times.double 2}"
IO.puts "Tripled: #{Times.triple 2}"
IO.puts "Quadrupled: #{Times.quadruple 2}"
