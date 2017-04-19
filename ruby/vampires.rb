puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
puts "What year were you born?"
year = gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic = gets.chomp
puts "Would you like to enroll in the company's health insurance? (y/n)"
insurance = gets.chomp

if age.to_i > 95
  age == false
else age.to_i <= 95
  age == true
end

if garlic == "y"
  garlic == true
else garlic == "n"
  garlic == false
end

if insurance == "y"
  insurance == true
else insurance == "n"
  insurance == false
end

if age && garlic && insurance == true
  puts "Probably not a vampire."
elsif age && garlic && insurance == false
  puts "Probably a vampire."
elsif age && garlic && insurance == false
  puts "Almost certainly a vampire."
elsif name == "Drake Cula"
  puts "Definitely a vampire."
elsif name == "Tu Fang"
  puts "Definitely a vampire."
else
  puts "Results inconclusive."
end
