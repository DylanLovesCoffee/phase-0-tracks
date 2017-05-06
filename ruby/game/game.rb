# Game class
class Game
  attr_reader :win, :guess_count

  def initialize(secret_word)
    @guess_count = 0
    @answer = secret_word.downcase.split('')
    @guess_correct = false
    @win = false
  end

  def check_answer(letter)
    @guess_count += 1
    if @answer.include?("#{letter}")
      @guess_correct = true
    elsif @answer == letter
      @win = true
    else
      false
    end
  end

end

# driver
puts 'What word or phrase would you like to enter?'
input = gets.chomp
new_game = Game.new(input)

puts "You have #{input.length + 3} guesses."

while new_game.guess_count != (input.length + 3)
  puts "What letter would you like to guess?"
  guess = gets.chomp
  if new_game.check_answer(guess)
    puts "You got one! Keep trying!"
  else
    puts "Oof, try again."
  end
end
