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

if operation == "1"
  result = number1.to_i() + number2.to_i()
elsif operation == "2"
  result = number1.to_i() - number2.to_i()
elsif operation == "3"
  result = number1.to_i() * number2.to_i()
elsif operation == "4"
  result = number1.to_f() / number2.to_f()
end

Kernel.puts("The result of this operation is #{result}.")