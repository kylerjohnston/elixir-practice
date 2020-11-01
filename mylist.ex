defmodule MyList do
  def mapsum([], _func), do: 0

  def mapsum([head | tail], func), do: func.(head) + mapsum(tail, func)

  def max([head|tail]), do: findmax(tail, head)

  defp findmax([], max), do: max

  defp findmax([head|tail], max) do
    cond do
      head >= max -> findmax(tail, head)
      max > head -> findmax(tail, max)
    end
  end

  def caesar([], _n), do: []

  def caesar([head|tail], n)
  when head + n <= ?z do
              [head + n | caesar(tail, n)]
  end

  def caesar([head|tail], n), do: [head + n - 26 | caesar(tail, n)]

  def span(from, to) when from == to, do: [to]

  def span(from, to) when from > to, do: []

  def span(from, to), do: [from|span(from + 1, to)]

  def all?([], _), do: true

  def all?([head|tail], func) do
    if func.(head) do
      all?(tail, func)
    else
      false
    end
  end

  def each([], _func), do: []

  def each([head|tail], func) do
    [func.(head) | each(tail, func)]
  end

  def filter([], _func), do: []
 
  def filter([head|tail], func) do
    if func.(head) do
      [head|filter(tail, func)]
    else
      filter(tail, func)
    end
  end

  def split(list, count), do: _split(list, [], count)

  defp _split([], list, _), do: {Enum.reverse(list)}

  defp _split(tail, list, 0), do: {Enum.reverse(list), tail}

  defp _split([head|tail], list, count) do
    _split(tail, [head|list], count - 1)
  end

  def take(list, count), do: _take(list, [], count)

  defp _take([], taken, _), do: Enum.reverse(taken)

  defp _take(_, taken, 0), do: Enum.reverse(taken)

  defp _take([head|tail], taken, count) do
    _take(tail, [head|taken], count - 1)
  end

  def flatten([]), do: []
 
  def flatten([head|tail]) do
    flatten(head) ++ flatten(tail)
  end

  def flatten(head), do: [head]

  def primes_up_to(n) do
    range = span(2, n)
    range -- (for a <- range, b <- range, a <= b, a * b <= n, do: a * b)
  end
end
