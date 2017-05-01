# class Puppy
#
#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end
#
#   def speak(integer)
#     integer.times {
#       puts "Woof!"
#     }
#   end
#
#   def roll_over
#     puts "*rolls over*"
#   end
#
#   def dog_years(human_years)
#     dog_age = human_years / 7
#     puts "I'm #{dog_age} years old!"
#   end
#
#   def lie_down
#     puts "*sploot*"
#   end
#
#   def initialize
#     puts "Initialiing new puppy instance..."
#   end
#
# end
#
# paco = Puppy.new
#
# paco.fetch('squeaky corndog')
# paco.speak(5)
# paco.roll_over
# paco.dog_years(35)
# paco.lie_down

class Warrior

  def attack(enemy)
    puts "Your warrior attacks #{enemy}!"
  end

  def defend
    puts "Your warrior braces his shield!"
  end

  def initialize
    puts "Your warrior readies himself."
  end
end

# knight = Warrior.new
# knight.attack('Black Knight')
# knight.defend

warrior_army = []

counter = 0
while counter < 50
  puts "Name your warrior: (type 'done' to quit)"
  warrior_name = gets.chomp
  break if warrior_name == 'done'
  warrior_name = Warrior.new
  counter += 1
  puts "You currently have #{counter} warriors."
end
