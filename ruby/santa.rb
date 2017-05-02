class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    puts 'Initializing Santa instance...'
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts 'Ho, ho, ho! Haaaappy holidays!'
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie."
  end

  def celebrate_birthday
    @age = @age + 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.insert(-1, (@reindeer_ranking.delete(reindeer)))
  end

end

# TEST CODE ------------
# robot_santa = Santa.new('male', 'Latino')
# robot_santa.speak
# robot_santa.eat_milk_and_cookies('chocolate chip')
# robot_santa.celebrate_birthday
# robot_santa.get_mad_at("Vixen")
# p robot_santa.gender = 'female'
# p robot_santa.age
# p robot_santa.ethnicity
# ----------------------

# SANTA DEMOGRAPHICS
gender_options = ['male', 'female', 'transgender', 'prefer not to say', 'N/A']
ethnicity_options = ['white', 'black', 'east asian', 'south asian', 'latino', 'native american', 'pacific islander', 'one with the world', 'outer dimensional']

# SANTA DEMOGRAPHIC SAVER
# santas = []
# gender_options.length.times { |option|
#   santas.push(Santa.new(gender_options[option], ethnicity_options[option]))
# }

# UI
puts "Name your santa: (type 'done' to exit)"
santa_name = gets.chomp
santa_age = (0..140).to_a

while santa_name != 'done'
  santa_name = Santa.new(gender_options.sample, ethnicity_options.sample)
  santa_name.age = santa_age.sample
  p "Gender: #{santa_name.gender}"
  p "Ethnicity: #{santa_name.ethnicity}"
  p "Age: #{santa_name.age}"

  puts "Name your santa: (type 'done' to exit)"
  santa_name = gets.chomp
end
