=begin
      Ultimate Challenge Zero
      Raul Aguilar
      WEBD-3008 (254433) Full-Stack Web
      August 30, 2024
=end

#1) Copy and past the following Ruby code into a file called carl_sagan.rb and follow the self-contained instructions.

# Using a single puts statement build the following
# sentence using only data from the carl hash and the
# sagan array along with some string interpolation.
#


carl  = {
          :toast => 'cosmos',
          :punctuation => [ ',', '.', '?' ],
          :words => [ 'know', 'for', 'we']
        }

sagan = [
          { :are => 'are', 'A' => 'a' },
          { 'waaaaaay' => 'way', :th3 => 'the' },
          'itself',
          { 2 => ['to']}
        ]
puts "We are a way for the cosmos to know itself."
puts "#{carl[:words][2].capitalize}" +
    " #{sagan[0][:are]}" +
    " #{sagan[0]['A']}" +
    " #{sagan[1]['waaaaaay']}" +
    " #{carl[:words][1]}" +
    " #{sagan[1][:th3]}" +
    " #{carl[:toast]}" +
    " #{sagan[3][2][0]}" +
    " #{carl[:words][0]}" +
    " #{sagan[2]}" +
    "#{carl[:punctuation][1]}\n "

ghosts = [
  { name: "Inky", age: 4, loves: "reindeers", net_worth: 25.0 },
  { name: "Pinky", age: 5, loves: "garden tools", net_worth: 14.0 },
  { name: "Blinky", age: 7, loves: "ninjas", net_worth: 18.03 },
  { name: "Clyde", age: 6, loves: "yarn", net_worth: 0.0 }
]

ghosts.each do |ghost|
  ghost_info  = "#{ghost[:name]} is #{ghost[:age]} years old, "
  ghost_info += "loves #{ghost[:loves]} and "
  ghost_info += "has #{ghost[:net_worth]} dollars in the bank."
  puts ghost_info
end


require 'net/http'
require 'json'
require 'pp'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)

response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response)

puts "\n List of dog breeds and sub-breeds:"

dog_breeds['message'].each do |breed, subbreeds|
  if subbreeds.empty?
    puts "* #{breed.capitalize}"
  else
    puts "* #{breed.capitalize}:"
    subbreeds.each do |subbreed|
      puts "  * #{subbreed.capitalize}"
    end
  end
end

#  4) Using data from the city's open data set figure out how many of our trees may die now that the Emerald Ash Borer has been found here.
#     In other words, how many Ash trees do we have in the city?

url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json'
uri = URI(url)

response = Net::HTTP.get(uri)
tree_data = JSON.parse(response)

# Filter ash trees
ash_trees = tree_data.select { |tree| tree['common_name'] && tree['common_name'].downcase.include?('ash') }

# Count the number of ash trees
ash_tree_count = ash_trees.size

puts "\n Number of ash trees in the dataset: #{ash_tree_count}"