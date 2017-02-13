#Reboot-02-Horse-race: code a program simulating
#a horse race, where you have to enter horse names,
#you then run the race (which will shuffle the horses array)
#and then the terminal outputs the race results.
#You can make your program much funnier using say
#to simulate the anchorman. That is pretty cool :)

# 1. Print welcome
# 2. Get horses
# 3. Get user's bet
# 4. Run the race
# 5. Print results

require_relative "horse-race"

puts "Welcome!"

bet_on = true
while bet_on

puts "The horses' names are Ams, Tram, Gram, Pic."
puts "On which horse do you want to bet?"
answer = gets.chomp.capitalize

result = winner_of_the_race(answer)

puts "The winner is #{result}"

if result == answer
  puts "Congratulations! Your horse won the race."
else
  puts "Too bad, your horse lost the race."
end

puts "Do you want to bet again? (y / n)"
bet_on = gets.chomp.downcase == "y"
end
