def calculate(first_number, second_number, operation)
  if operation == "+"
    first_number + second_number
  elsif operation == "-"
    first_number - second_number
  elsif operation == "*"
    first_number * second_number
  else
    first_number / second_number.to_f
  end
end
