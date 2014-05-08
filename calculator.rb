# 1. String interpolation vs. concat     #{a} vs "lakjsdlf" + a
# 2. extract repetitive logic to methods-  made a method for putting message on screen
# 3. Keep track of variable types- strings vs. ints.     to_i and to_s
# 4. Variable scope determined by do...end; outer scope vars are available to inner scope, but not vice versa
# 5. pass by ref vs. pass by value; if method mutates caller, outer obj was modified

require 'pry'


def say(msg)
  puts "=======> #{msg}"
end

say "What's the first number?"
num1 = gets.chomp

say "What's the second number?"
num2 = gets.chomp

say "1- Add 2- Subtract 3- Multiply 4- Divide"
operator = gets.chomp 



if operator == '1'
  result = num1.to_i + num2.to_i
elsif operator == '2'
  result = num1.to_i - num2.to_i
elsif operator == '3'
  result = num1.to_i  * num2.to_i
else 
  result = num1.to_f / num2.to_f 
end

say "Result is #{result}"
