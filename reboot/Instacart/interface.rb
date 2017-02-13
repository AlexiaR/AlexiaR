#Implement a shopping cart, where ultimately you can
#Add items with prices and amount in your cart.
#Then checkout and the terminal will print you the detailed receipt.
#Start with a very simple program without handling prices nor available stock, then improve it.

# 1. Print Welcome
# 2. Define the food items in the store with their price tag
# 3. Get items from the user (= shopping step)
# 4. Get the number of each item from the user
# 5. Calculate the price for each item giving the quantity
# 6. Print the bill (total receipt for all items)


require_relative "instacart"

puts "Welcome!"
puts "Here is the items you can buy :"
puts STORE = {
  "fish" => 10,
  "chicken" => 7,
  "meat" => 9,
  "tofu" => 8,
  "tomatoes" => 4,
  "salad" => 3,
  "zucchinies" => 5,
  "potatoes" => 4,
  "milk" => 3,
  "bananas" => 3,
  "oranges" => 4,
  "yogurt" => 5,
  "cake" => 6
}

CART = Hash.new(0)

shopping_on = true

puts "What do you want to buy?"
answer = gets.chomp.downcase

while answer != ""

  if STORE.has_key?(answer)
    puts "The item was added to your cart."
    CART[answer] += 1
  else
    puts "This item doesn't exist."
  end

puts "What do you want to buy?"
answer = gets.chomp.downcase
end

puts "You cart contains #{CART}"

total = 0

CART.each do |product, quantity|
  total_by_product = quantity * STORE[product]
  puts total_by_product
  total += total_by_product
end

puts total







