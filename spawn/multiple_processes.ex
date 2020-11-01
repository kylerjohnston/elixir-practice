defmodule MultiProc do
  def hello(parent) do
    send parent, "Hello"
  end
end

_ = spawn_monitor(MultiProc, :hello, [self()])

:timer.sleep(500)

receive do
  msg -> IO.puts msg
end
