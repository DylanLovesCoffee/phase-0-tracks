# loop through every letter of the input string
# if the character is NOT a space, concatenate that_letter.next to the output string
# else, add a space



def encrypt(input)
  index = 0
  output = ""
  while index < input.length
    if input[index] == " "
      output += " "
    else
      output += input[index].next[0]
    end
    index += 1
  end
  return output
end

puts encrypt("abc")
puts encrypt("zed")

# define the string containing all of the letters of the alphabet in order
# loop through every letter of the input string
# if the letter is not a space, find the index of that letter in the alphabet string
# concatenate the letter in the alphabet string at index -1
# else, add a space


def decrypt(input)
  index = 0
  output = ""
  alpha = "abcdefghijklmnopqrstuvwxyz"
  while index < input.length
    if input[index] == " "
      output += " "
    else
      output += alpha[alpha.index(input[index])-1]
    end
    index += 1
  end
  return output
end


puts decrypt("bcd")
puts decrypt("afe")

puts decrypt(encrypt("swordfish"))

# This nested method works because the method has to evaluate from the inner out. Meaning it must evaluate the "encrypt" method first, to evaluate the "decrypt".


# First, ask user if they want to encrypt or decrypt
# Ask them for a password
# Based on the answer from the first question, either print encrypted password or decrypted password

puts "What would you like to do?"
puts "1. Encrypt a password."
puts "2. Decrypt a password."
input = gets.chomp.to_i

while input < 1 || input > 2
  puts "Please select a valid choice."
  input = gets.chomp.to_i
end

puts "Enter your password:"
password = gets.chomp

if input == 1
  puts encrypt(password)
else
  puts decrypt(password)
end
