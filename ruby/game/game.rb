# Game class
class Game
  attr_accessor :hidden_answer, :guess_count

  def initialize(secret_word)
    @guess_count = 0
    @answer = secret_word.downcase.split('')
    @hidden_answer = ["_"] * secret_word.length
  end

  def check_answer(letter)
    @guess_count += 1
    letter_index = @answer.index(letter)
    if @answer.include?("#{letter}") == true
      @hidden_answer.delete_at(letter_index)
      @hidden_answer.insert(letter_index, letter)
    end
  end
end

# driver
puts 'What word would you like to enter?'
input = gets.chomp
new_game = Game.new(input)

puts "You have #{input.length + 3} guesses."

while new_game.guess_count != (input.length + 3)
  puts "What letter would you like to guess?"
  guess = gets.chomp
  if new_game.check_answer(guess)
    p "You got one! Keep trying!"
    p new_game.hidden_answer
  else
    p "Oof, try again."
    p new_game.hidden_answer
  end
end
