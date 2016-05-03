# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

#Create new insatnce of VirusPredictor
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


#Combines the return from the predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

#Method to predict estimated deaths by population
  def predicted_deaths
    # predicted deaths is solely based on population density
    #REFRACTOR
    pop_level = @population_density.to_i/50
      if pop_level > 4
        pop_level = 4
      elsif pop_level < 1
        pop_level = 0.5
      end
    number_of_deaths = @population * (pop_level*0.1)
    #ORIGNAL
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4)
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3)
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2)
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1)
    # else
    #   number_of_deaths = (@population * 0.05)
    # end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end

#Method to preduct speed of spread based on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

DRIVER CODE
 initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#Release 5: New Feature

STATE_DATA.each do |state, info|
  state = VirusPredictor.new(state, info[:population_density], info[:population])
  state.virus_effects
end

#=======================================================================
# Reflection Section
