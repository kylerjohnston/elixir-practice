defmodule Guess do
  def guess(actual, range) do
    check_guess(actual, range, range.first)
  end

  def check_guess(actual, _range, guess) when actual == guess do
    IO.puts "It's: #{guess}!"
  end

  def check_guess(actual, range, guess) when actual > guess do
    IO.puts "Not #{guess}!"
    new_range = guess..range.last
    check_guess(actual, new_range, midpoint(new_range))
  end

  def check_guess(actual, range, guess) when actual < guess do
    IO.puts "Not #{guess}!"
    new_range = range.first..guess
    check_guess(actual, new_range, midpoint(new_range))
  end

  def midpoint(range) do
    range.last - div(range.last - range.first + 1, 2)
  end
end
