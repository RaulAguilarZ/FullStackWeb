=begin
puts "Hello World"

caught_ghosts = 23
ghost_quota = 37
if (caught_ghosts > ghost_quota)
  puts "You are done for the day."
else
  ghosts_required = ghost_quota - caught_ghosts
  puts "You need to find #{ghosts_required} more ghosts."
end

4.times { puts "Chunky Bacon!" }

puts 2.class
puts "Hola".class

puts 'A comment follows this line.' # This is also a comment

# This is a multi-line
# comment in Ruby.
# Ya, sorta lame.

=begin
This is a multi-
line comment in Ruby.
#=end

x = 2 +
x = 2 + 2; y = x + 1

puts x, y


clown_car = nil
if (clown_car == nil)
  puts 'Where are all the clowns?'
end


NUMBER_OF_ARMS = 2

temperature_on_mars = -5
puts temperature_on_mars * 2


#opening_line   += opening_line + " It was the blurst of times."
#movie_trailer += 'there grew a ninja '
#movie_trailer += "who would never be forgotten."


#time = "4 o'clock" ver video

very_large_number  = 34_000_000_001
even_larger_number = very_large_number * 12_345
puts "Whoa #{even_larger_number} is a large number!"

ALMOST_PI = 3.14
AVOGADROS_CONSTANT = 6.02214179e23

my_variable = nil;

if (my_variable)
 puts "Variable is TRUTHY"
else
 puts "Variable is FALSY"
end

you_have_had_enough =  true
puts 'Enough Already' if you_have_had_enough

temperature = -1
if (temperature < 0)
  clothing = 'snowsuit'
elsif (temperature < 25)
  clothing = 'pant suit'
else
  clothing = 'bathing suit'
end

puts "Nada #{clothing}"

unless temperature < 0
  puts 'Let us go for a stroll.'
end
puts temperature

snow_fort = 'awesome home' unless temperature > 0
puts snow_fort

number_of_chairs = 4

case number_of_chairs
when 1
  puts 'Lonely with teardrops in my tea.'
when 2
  puts 'Tea for two.'
  puts 'Two for tea.'
when (3..10) # COOL: Comparing against a range.
  puts "It's a tea party!"
else
  puts 'I feel claustrophobic.'
end

enlightenment = 42

case
when enlightenment > 60
  puts 'You are too hasty, grasshopper.'
when (enlightenment < 40 || enlightenment == nil)
  puts 'You are like the sloth, my friend. Diligence is key!'
when enlightenment == 42
  puts 'Hello, Enlightened One.'
else
  puts 'Yeah, not quite, pal. Maybe next time.'
end
=end
# METHODS
def say_goodnight(name)
  puts "Goodnight, #{name}."
end

say_goodnight('John Boy')
say_goodnight('Matz')

# Method Return Values
def square(x)
  x * x
end

# Note that multiple parameters are separated by commas.
def share_pizza(pieces_left, people)
  message = ""
  if (pieces_left < people)
    message = "Sorry I don't have enough pizza."
  else
    message = "Let's share. Any leftovers go to the dog."
  end
  message
end

puts square(5)
puts share_pizza(4, 3)

# Blocks do
#2.times do
#  puts 'Forty Two'
#  puts 'Wiggle Wiggle'
#end

#42.times { |i| puts "#{i} is the meaning of life, the universe, and everything." }


# Traversing Arrays
ghosts = %w[Blinky Pinky Inky Clyde]

ghosts.each do |ghost_name|
  puts ghost_name
end

# Indexed Each Loops
ghosts = %w[Blinky Pinky Inky Clyde]

ghosts.each_index do |i|
  puts "#{i}: #{ghosts[i]}"
end

#Traversing Hashes
ghost_dictionary = { 'Blinky' => 'Shadow',
                     'Pinky'  => 'Speedy',
                     'Inky'   => 'Bashful',
                     'Clyde'  => 'Pokey'    }

ghost_dictionary.each do | nickname, character |
  puts "#{nickname} also know as #{character}."
end

# A Map is a Conversion Loop
secrets = ["eht", "tsohg", "lliw", "ekirts", "ta", "thgindim"]
decoded = secrets.map { |word| word.reverse }
puts decoded

COMBINED_TAX_RATE = 0.11 # 11%
product_prices = [12.34, 839.00, 90.95, 100]

product_taxes = product_prices.map { |price| price * COMBINED_TAX_RATE }
# product_taxes equals: [1.3574, 92.29, 10.0045, 11.0]
puts product_taxes

total_price = product_prices.sum
max_price   = product_prices.max
min_price   = product_prices.min

puts "Total# #{total_price}, Max #{max_price}, Min #{min_price}"

total_price = product_prices.reduce(0) { |sum, price| sum + price }
total_price = product_prices.reduce(:+)
puts total_price

toys_and_prices = { lego: 120.30, doll: 30.23, catan: 40.55 }
total_price = toys_and_prices.values.reduce(:+)

puts total_price


def leg_count creature, creature_count
  if creature == 'human'
    legs = 2 * creature_count
  elsif creature == 'spider'
    legs = 8 * creature_count
  else
    legs = 4 * creature_count
  end
  "#{legs} #{creature} legs in total."
end

puts leg_count('spider', 4)
#SCOPE
# How many legs are there in total if we have
# 'creature_count' number of 'creature's?
def leg_count (creature, creature_count)
  if creature == 'human'
    legs = 2 * creature_count
  elsif creature == 'spider'
    legs = 8 * creature_count
  else
    legs = 4 * creature_count
  end
  "#{legs} #{creature} legs in total."
end

puts leg_count 'spider', 4
puts legs # This variable should not be available in the current scope.