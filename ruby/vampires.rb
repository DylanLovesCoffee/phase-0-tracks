puts "How many employees will be processed?"
x = gets.chomp
x = x.to_i
until x == 0
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
  puts "Are you allergic to anything? (type 'done' to finish)"
  allergies = gets.chomp
  loop {
    puts "Are you allergic to anything? (type 'done' to finish)"
    allergies = gets.chomp
    break if allergies == "done"
    break if allergies == "sunshine"
  }

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
  elsif allergies == "sunshine"
    puts "Probably a vampire."
  else
    puts "Results inconclusive."
  end
  x -=1
end

print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
