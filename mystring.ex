defmodule MyString do
  def is_ascii?([head|_tail]) when head < 32, do: false

  def is_ascii?([head|_tail]) when head > 126, do: false

  def is_ascii?([]), do: false

  def is_ascii?([_head|[]]), do: true

  def is_ascii?([_head|tail]), do: is_ascii?(tail)

  def anagram?(one, two) do
    Enum.sort(one) == Enum.sort(two)
  end

  def calculate(exp) do
    {term_one, remainder} = get_term(exp)
    [operator|remainder] = remainder
    [_space|remainder] = remainder
    {term_two, _} = get_term(remainder)

    case operator do
      ?* -> term_one * term_two
      ?/ -> term_one / term_two
      ?+ -> term_one + term_two
      ?- -> term_one - term_two
    end
  end

  defp get_term(exp, term \\ [])
 
  defp get_term([head|[]], term), do: {Enum.reverse([head|term]) |> List.to_integer, []}

  defp get_term([?\s|tail], term), do: {Enum.reverse(term) |> List.to_integer, tail}

  defp get_term([head|tail], term), do: get_term(tail, [head|term])
end
