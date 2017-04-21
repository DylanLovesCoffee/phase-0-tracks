puts "What is the hamster's name?"
name = gets.chomp
puts "What is your preferred volume level of the hamster? (1-10)"
volume_level = gets.chomp.to_i
puts "What is the hamster's fur color?"
fur_color = gets.chomp
puts "Is this hamster a good candidate for adoption? (Yes/No)"
adoption = gets.chomp
puts "What is the estimated age of the hamster?"
age = gets.chomp.to_i

if age == " "
  age = nil
end

puts "The hamster's name is #{name}."
puts "The hamster's volume level is at #{volume_level}."
puts "The hamster's fur color is #{fur_color}."
puts "Is this hamster ready for adoption:#{adoption}!"
puts "This hamster is #{age} years old."
