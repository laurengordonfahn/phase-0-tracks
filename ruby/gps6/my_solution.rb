# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative brings in information from another file to be linked together. The difference is that require_relative is convenient subset of require.
#
# require_relative 'state_data'

class VirusPredictor
# creates a new instance and assigns their attributes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
 
# gathers information to be used in other methods
  def virus_effects
   predicted_deaths
   speed_of_spread
  end

  private
# takes attributes and runs them through equations to print the predicted deaths 
  @@buckets = [
    {
      min_density: 200,
      death_multiplier: 0.4,
      spread: 0.5,
    },
    {
      min_density: 150,
      death_multiplier: 0.3,
      spread: 1,
    },
    
     {
      min_density: 100,
      death_multiplier: 0.2,
      spread: 1.5,
    },
    {
      min_density: 50,
      death_multiplier: 0.1,
      spread: 2,
    },
    
    { 
      min_density: 0,
      death_multiplier: 0.05,
      spread: 2.5,
    }
   
    
  ]
  def predicted_deaths
    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end
    @@buckets.each do |bucket|
        if @population_density >= bucket[:min_density]
           number_of_deaths = (@population * bucket[:death_multiplier]).floor
           print "#{@state} will lose #{number_of_deaths} people in this outbreak"
           return
        end
    end

  end
# takes attributes and runs them through equations to print the predicted speed of spread
  def speed_of_spread 
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed = 0.5
#     elsif @population_density >= 150
#       speed = 1
#     elsif @population_density >= 100
#       speed = 1.5
#     elsif @population_density >= 50
#       speed = 2
#     else
#       speed = 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end
     @@buckets.each do |bucket|
        if @population_density >= bucket[:min_density]
           speed = bucket[:spread]
           puts " and will spread across the state in #{speed} months.\n\n"
           return
        end
      end
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effectsls

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# Release 5
STATE_DATA.each do |state, state_hash|
  state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state.virus_effects
end
#Release 6

#=======================================================================
# Reflection Section
# state_data's two different hashes are because the symboles can't be changed they can only be overwritten, where the string version can be altered with out re-writing its content
# require_realtive: links two files that are in the same folder so they have can share code
# require will need a realtive path because the files that are being linked may not be in "local" to eachother and it will need a navigation path to find them
# some ways to iterate through a hash is to use  the bucket method that we share above
# the varibales in virus_effects orginally had the instance variables being called in the code while the method didn't take in any paremeters, while the code contianed methods that used the instance varibales in the code lines so it was unnecesary to call the variables twice.
# we spent a really long time on refactor and variable scope and that is what this challenge helped me understand better.
