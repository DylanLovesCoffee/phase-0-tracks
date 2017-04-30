# Put string to ask user for a name
# Split user input string into an array
# Reverse the contents of the array
# Loop through each letter and indentify vowels and consonants
# Loop through consonants and vowels to replace the name letters with

puts "Welcome to the Alias Manager 300. What is your name?"
spy_name = gets.chomp


scrambled_name = spy_name.downcase.split('')

# ---VOWEL CONVERTER---
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

# ---CONSONANT CONVERTER---
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
    elsif letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u' || letter == ' '
      letter
    else
      letter.next
    end
  end
end

next_vowel(scrambled_name)
next_consonant(scrambled_name)

p new_name = scrambled_name.join('').split(' ').reverse!
