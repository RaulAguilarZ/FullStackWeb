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
    "#{carl[:punctuation][1]} "

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
