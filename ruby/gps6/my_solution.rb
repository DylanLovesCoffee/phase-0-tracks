# Virus Predictor

# I worked on this challenge [by myself, with: Catherine/CJ].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# links a separate file to this one so that objects can be shared
#
require_relative 'state_data'

class VirusPredictor

  # method initializes a class instance setting it with state, pop density , population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # method calling predicted deaths method and speed_of_spread metod
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # method takes 3 parameters and is private
  def predicted_deaths
    # predicted deaths is solely based on population density
    # the if else seems to say the larger the density the higher the deaths and rounding down


    death_percentage = 0

    #getting the death_percentage rate for the density
    if @population_density >= 200
      death_percentage = 0.4
    elsif @population_density >= 150
      death_percentage = 0.3
    elsif @population_density >= 100
      death_percentage = 0.2
    elsif @population_density >= 50
      death_percentage = 0.1
    else
      death_percentage = 0.05
    end

    number_of_deaths = (@population * death_percentage).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # speed is setting the number of months as the speed at 0
  # why is the speed slower when the population density is higher??
  # change it to months
  def speed_of_spread #in months #doesn't need arguments
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    months = 0.0

    if @population_density >= 200
      months = 0.5
    elsif @population_density >= 150
      months = 1
    elsif @population_density >= 100
      months = 1.5
    elsif @population_density >= 50
      months = 2
    else
      months = 2.5
    end

    puts " and will spread across the state in #{months} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

# creating a report for each state , and then finding it's virus effects.
STATE_DATA.each do |state, state_info|
  report = VirusPredictor.new(state, state_info[:population_density], state_info[:population] )
  report.virus_effects
end




#=======================================================================
# Reflection Section
# There isn't a huge difference between using hashrockets and symbols in the data, aside from printing a string to the console when using a hashrocket.
# require_relative allows you to load a file of your choosing and use its properties, however, the require method works better with loading a file where its functionality has been installed in your system
# You can iterate through each key or value of a hash
# Before we refactored virus_effects, the "@" on the variables in the parameters stood out the most because that was something we weren't used to seeing
# I felt that i solidified my understanding of the scope of instances variables
