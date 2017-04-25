# Ask user for basic client information (name, age, number of children, theme, etc.)
# Store user input into variables
# Create an empty hash
# Insert values into the hash
# Print the client information back to the user
# Prompt the user to make an edit or skip
# If the user's input matches an existing key, ask the user what they would like to change the new value to
# Replace the old value with the new value and print the result

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

puts "Which data type would you like to update (type 'none' to skip): "
key_update = gets.chomp

if key_update == "none"
  puts "Thank you for your entry!"
elsif key_update.to_sym == :client_name || :client_age || :children || :decor_theme || :client_budget
  puts "What is your new value?"
  value_update = gets.chomp
  client_information[key_update.to_sym] = "#{value_update}"
else
  puts "No existing data type!"
end

p client_information
