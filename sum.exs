defmodule Math do
  def sum(1), do: 1

  def sum(n) when n > 1, do: n + sum(n - 1)

  def gcd(x, 0), do: x

  def gcd(x, y), do: gcd(y, rem(x, y))
 end


IO.puts "Sum 10: #{Math.sum 10}"
IO.puts "Greatest common divisor of 2336 and 32099: #{Math.gcd(2336, 32092)}"
