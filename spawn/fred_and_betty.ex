defmodule FredAndBetty do
  def run do
    receive do
      {sender, token} ->
        send sender, {:ok, token}
    end
  end
end

pid_fred = spawn(FredAndBetty, :run, [])
pid_betty = spawn(FredAndBetty, :run, [])

send pid_fred, {self(), "fred"}
send pid_betty, {self(), "betty"}

receive do
  {:ok, message} ->
    IO.puts message
end

receive do
  {:ok, message} ->
    IO.puts message
end
