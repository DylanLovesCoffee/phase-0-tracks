class Santa

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
    puts "That was a good #{cookie_type}"
  end

end

# TEST CODE
# robot_santa = Santa.new('male', 'Latino')
#
# robot_santa.speak
# robot_santa.eat_milk_and_cookies('chocolate chip')

santas = []
gender_options = ['male', 'female', 'transgender', 'prefer not to say', 'N/A']
ethnicity_options = ['white', 'black', 'east asian', 'south asian', 'latino', 'native american', 'one with the world', 'outer dimensional']

gender_options.length.times { |option|
  santas.push(Santa.new(gender_options[option], ethnicity_options[option]))
}
