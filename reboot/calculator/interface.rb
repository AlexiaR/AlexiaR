
# 1. Say hello to the user
# 2. Ask user for first number
# 3. Get user answer
# 4. Ask user for second number
# 5. Make the addition of the two numbers
#or 5. Ask for the operation
# 6. Make the operation choosen
# 7. Loop

require_relative "calculator"

calculator_on = true
while calculator_on

  puts "Hello!"
  puts "Enter a number:"
  answer_1 = gets.chomp.to_i

  puts "Enter a second number:"
  answer_2 = gets.chomp.to_i

  puts "What operation do you want to make? (+ / - / * / /)"
  answer_3 = gets.chomp

  result = calculate(answer_1, answer_2, answer_3)

  puts "The result is #{result}"

  puts "Do you want to try another operation? (y / n)"
  calculator_on = gets.chomp.downcase == "y"
end






