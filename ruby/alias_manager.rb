# Put string to ask user for a name
# Split user input string into an array
# Reverse the contents of the array
# Loop through each letter and indentify vowels and consonants
# Loop through consonants and vowels to replace the name letters with

puts "Welcome to the Alias Manager 300. What is your name?"
spy_name = gets.chomp


scrambled_name = spy_name.downcase.split('')
<<<<<<< HEAD
p scrambled_name

=======

# ---VOWEL CONVERTER---
>>>>>>> 9435ab30fabc0d5f72788885a4a20cd8771e9836
def next_vowel(input)
  input.map! do |letter|
    vowel_hash = {
      a: 'e',
      e: 'i',
      i: 'o',
      o: 'u',
      u: 'a'
    }
    if letter == 'a'
      letter = vowel_hash.fetch(:a)
    elsif letter == 'e'
      letter = vowel_hash.fetch(:e)
    elsif letter == 'i'
      letter = vowel_hash.fetch(:i)
    elsif letter == 'o'
      letter = vowel_hash.fetch(:o)
    elsif letter == 'u'
      letter = vowel_hash.fetch(:u)
    else
      letter
    end
  end
end

<<<<<<< HEAD
p next_vowel(scrambled_name)

=======
# ---CONSONANT CONVERTER---
>>>>>>> 9435ab30fabc0d5f72788885a4a20cd8771e9836
def next_consonant(input)
  input.map! do |letter|
    consonant_hash = {
      z: 'b',
      d: 'f',
      h: 'j',
      n: 'p',
      t: 'v'
    }
    if letter == 'z'
      letter = consonant_hash.fetch(:z)
    elsif letter == 'd'
      letter = consonant_hash.fetch(:d)
    elsif letter == 'h'
      letter = consonant_hash.fetch(:h)
    elsif letter == 'n'
      letter = consonant_hash.fetch(:n)
    elsif letter == 't'
      letter = consonant_hash.fetch(:t)
<<<<<<< HEAD
    elsif letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u'
=======
    elsif letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u' || letter == ' '
>>>>>>> 9435ab30fabc0d5f72788885a4a20cd8771e9836
      letter
    else
      letter.next
    end
  end
end

<<<<<<< HEAD
p next_consonant(scrambled_name)

new_name = scrambled_name.join('').split(' ').reverse
p new_name
=======
next_vowel(scrambled_name)
next_consonant(scrambled_name)

new_name = scrambled_name.join('').split(' ').reverse!

new_name.map! { |name|
  name.capitalize
}

agent_alias = new_name.join(' ')


puts "Your alias is #{agent_alias}."

puts "What name would you like to scramble? (type 'quit' to exit)"
name_input = gets.chomp

database = []
database.push(agent_alias)

until name_input == 'quit'
  name_output = name_input.downcase.split('')
  next_vowel(name_output)
  next_consonant(name_output)

  new_name = name_output.join('').split(' ').reverse!

  new_name.map! { |name|
    name.capitalize
  }

  agent_alias = new_name.join(' ')
  puts "Your alias is #{agent_alias}."
  database.push(agent_alias)

  puts "What name would you like to scramble? (type 'quit' to exit)"
  name_input = gets.chomp
end

puts "#{spy_name}'s current aliases are: #{database}."
>>>>>>> 9435ab30fabc0d5f72788885a4a20cd8771e9836
