# Ask user for basic client information (name, age, number of children, theme, etc.)
# Store user input into variables
# Create an empty hash
# Insert values into the hash
# Print the client information back to the user

puts "Client's name: "
client_name = gets.chomp
puts "Client age: "
client_age = gets.chomp
puts "How many children does the client have: "
children = gets.chomp
puts "Client's decor theme: "
decor_theme = gets.chomp
puts "Client's budget: "
client_budget = gets.chomp

client_information = { }

client_information[:client_name] = "#{client_name}"
client_information[:client_age] = "#{client_age}"
client_information[:children] = "#{children}"
client_information[:decor_theme] = "#{decor_theme}"
client_information[:client_budget] = "#{client_budget}"

p client_information
