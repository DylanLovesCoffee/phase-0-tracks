# Game class
class Game
  attr_reader :answer
  attr_accessor :hidden_answer, :guess_count, :used_letters

  def initialize(secret_word)
    @guess_count = 0
    @answer = secret_word.downcase.split('')
    @hidden_answer = ["_"] * secret_word.length
    @used_letters = []
  end

  def check_answer(letter)
    @guess_count += 1
    letter_index = @answer.index(letter)

    if @answer.count(letter) > 1
      @answer.each_index do |index|
        if @answer[index] == letter
          @hidden_answer.delete_at(index)
          @hidden_answer.insert(index, letter)
          @used_letters.push(letter)
        end
      end
    elsif @used_letters.include?(letter) == true
      @guess_count -= 1
    elsif @answer.include?(letter) == true
      @hidden_answer.delete_at(letter_index)
      @hidden_answer.insert(letter_index, letter)
      @used_letters.push(letter)
    else !@answer.include?(letter)
      @used_letters.push(letter)
    end
  end
end

# DRIVER CODE
puts 'What word would you like to enter?'
input = gets.chomp
guesses_left = input.length + 3
new_game = Game.new(input)

puts "You have #{guesses_left} guesses."

while new_game.guess_count != guesses_left
  puts "What letter would you like to guess?"
  guess = gets.chomp
  new_game.check_answer(guess)
  p "Guesses Left: #{guesses_left - new_game.guess_count}"
  p new_game.hidden_answer

  if guess.downcase == new_game.answer.join
    puts "You did it!"
    break
  elsif new_game.hidden_answer == new_game.answer
    puts "You did it!"
    break
  elsif new_game.guess_count == guesses_left
    puts "Ya dun goof'd!"
  end
end
