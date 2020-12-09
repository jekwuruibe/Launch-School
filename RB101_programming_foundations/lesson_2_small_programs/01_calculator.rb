Kernel.puts("Welcome to Calculator!")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp

Kernel.puts("What type of operation will you like to perform?")
Kernel.puts("1: add")
Kernel.puts("2: subtract")
Kernel.puts("3: multiply")
Kernel.puts("4: divide")

operation = Kernel.gets().chomp()

result = case operation
when "1"
  number1.to_i() + number2.to_i()
when "2"
  number1.to_i() - number2.to_i()
when "3"
  number1.to_i() * number2.to_i()
else
  number1.to_f() / number2.to_f()
end

Kernel.puts("The result of this operation is #{result}.")