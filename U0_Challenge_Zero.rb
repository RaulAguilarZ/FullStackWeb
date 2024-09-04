=begin
      Ultimate Challenge Zero
      Raul Aguilar
      WEBD-3008 (254433) Full-Stack Web
      August 30, 2024
=end

#1) Write a Ruby program to calculate the after tax value of a specific dollar amount.
# Store a dollar amount in a variable called "sub_total"

#3) Prompt the user to enter a subtotal and read the input
# https://www.geeksforgeeks.org/how-to-get-user-input-in-ruby/
#sub_total = 5.00
puts "Enter the subtotal amount: "
sub_total = gets.chomp.to_f

# Store the GST rate and PST rate in constants.
GST_RATE = 0.05
PST_RATE = 0.07

# Calculate and store the after tax amount in a variable called "grand_total".
pst_amount = sub_total * PST_RATE
gst_amount = sub_total * GST_RATE
grand_total = sub_total + pst_amount + gst_amount

# Output
puts "Subtotal: $#{sub_total}"
puts "PST: $#{pst_amount.round(2)} - #{(PST_RATE * 100).round(2)}%"
puts "GST: $#{gst_amount.round(2)} - #{(GST_RATE * 100).round(2)}%"
puts "Grand Total: $#{grand_total.round(2)}"

#2) Update your Ruby program from question one such that it prints a short message after the grand total.
#
if (grand_total <= 5.00)
  puts "Pocket Change"
elsif (grand_total < 20.00)
  puts "Wallet Time"
else
  puts "Charge It!"
end