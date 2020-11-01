1..10
|> Enum.map(&(&1 * &1))
|> Enum.filter(fn x -> rem(x, 2) == 0 end)
|> Enum.sum
|> IO.puts
