# 1. Welcome
# 2. Display the action menu (read list / add item / delete item / mark item as bought)
# 3. Get user action
# 4. Perform the user action
# 5.
# 6.
require_relative "christmas_list"

def read
  puts "You have #{read_list.size} entries:"
  puts read_list
end

def add
  puts "What item do you want to add?"
  item = gets.chomp.capitalize
  add_list(item)
end

def delete
  read
  puts "What item do you want to delete?"
  item = gets.chomp.capitalize
  delete_list(item)
end

def mark
  read
  puts "What item do you want to mark as bought?"
  item = gets.chomp.capitalize
  mark_list(item)
end

def idea
  puts "What are you searching on Etsy?"
  article = gets.chomp

require "open-uri"
require "nokogiri"

# 1. We get the HTML file thanks to open-uri
file = open("https://www.etsy.com/search?q=#{article}")

# 2. We build a Nokogiri document from this file
doc = Nokogiri::HTML(file)

# 3. We search every elements with class="card" in our HTML doc
doc.search(".card").each do |card|
  # 4. for each element found, we extract its title and print it
  title = card.search(".card-title").text.strip
  puts title
end
end


puts "Welcome in your Christmas' list!"

list_on = true
while list_on
  puts "What do you want to do? (L)ist (A)dd (D)elete (M)ark or I(dea)"
  action = gets.chomp.downcase

  case action
  when "l" then read
  when "a" then add
  when "d" then delete
  when "m" then mark
  when "i" then idea
  else
    puts "This action doesn't exist."
  end

  puts "Do you want to do something else? (y / n)"
  list_on = gets.chomp.downcase == "y"
end
