fizzbuzz = fn
  0, 0, _ -> IO.puts "FizzBuzz"
  0, _, _ -> IO.puts "Fizz"
  _, 0, _ -> IO.puts "Buzz"
  _, _, neither -> IO.puts "#{neither}"
end

fb = fn n -> fizzbuzz.(rem(n, 3), rem(n, 5), n) end

fb.(10)
fb.(11)
fb.(12)
fb.(13)
fb.(14)
fb.(15)
fb.(16)
