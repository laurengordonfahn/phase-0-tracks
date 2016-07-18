# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
# allows us to use data or code form another document that is in the same folder as the file we are loading into.
class VirusPredictor
  # used to create a new instance of our class and let us set the instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # call two methods but also provides those methods with the necessary arguments. Will return a string.   
  
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  
  # takes variables and predicts the number of deaths using population density instead of population - using conditional statements. Returns nil 
  

  def predicted_deaths
    predicted deaths is solely based on population density
    multiplier = 0.4
    density = 200
    if @population_density < 50
      number_of_deaths = (@population * 0.05).floor
      print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    else
      loop do
        
        if @population_density >= density
          number_of_deaths = (@population * multiplier).floor
          print "#{@state} will lose #{number_of_deaths} people in this outbreak"
          break
        end
        
        multiplier -= 0.1
        density -= 50
      end
    end
    
    if @population_density < 50
      number_of_deaths = (@population * 0.05).floor
      print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    else
  end

  # Release 9
  # The two different hash syntaxes in state_data shows the use of hash rockets and strings being assigned to eachother and than symbols being used, you can call these differently symbols can't be re written but called more easily
  # require_realitive allows access of a document in the same folder while require allows access of a document with a farther off location using a relative path
  # you can iterate through a hash are loop do statement or a loop methods
  # when refactoring virus_effects it was clear that the variables where redundent and so not needed as they where called in the methods contained in that methods
  #   the concept I most solidified in this challenge was that there is always a way to simplify code, and it is going to take some time for me to recognize when and how to do this. 
