#Initalizeing class Santa
class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age
#Creating two instances of class Santa

# Instance Methods for class Santa

	def speak(number_of_times)
		index = 0
		until number_of_times == index 
			puts "Ho, ho, ho!, Haaaappy holidays!"
			index +=1
		end 
	end


	def eat_milk_and_cookies(type_of_cookie)
		puts "That was a good #{type_of_cookie}."
	end



	def initialize(name, gender, ethnicity)
		puts "Initializing Santa instance...#{name}, #{gender}, #{ethnicity}."
		@name = name.to_s
		@gender = gender.to_s
		@ethnicity = ethnicity.to_s
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0

	end

#Release 2
	def celebrate_birthday(age)
		@age = age + 1
		
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		p @reindeer_ranking.push(reindeer_name)
	end

#This is noted because we added attr_ statements at the top of this code
	# def gender= (new_gender)
	# 	@gender = new_gender
	# end

	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

end


# driver code to test Release 0
# sarah = Santa.new("sarah")
# small_santa = Santa.new("small santa")
# sarah.speak(2)
# small_santa.eat_milk_and_cookies("Oatmeal Chocolate-Chip")

#Release 1

# an empty container for the santa instances
# santas = []
# example_names = ["Sarah", "Sting", "Sigmond", "Stella", "Stephen", "Sidney", "Singin"]
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_names.length.times do |i|
#   santas << Santa.new(example_names[i], example_genders[i], example_ethnicities[i])
# end


#Release 2
# class Reindeer
#   def initialize(name)
#     @name = name
#   end
# end

# reindeer = Reindeer.new("Blitzen")
# reindeer.name

phil = Santa.new("Phil", "Maleish", "Caucasian")
p phil.celebrate_birthday(4)
phil.get_mad_at("Dancer")
p phil.age
p phil.ethnicity
p phil.gender= ("Transcurious")


# an empty container for the santa instances
def santa_generator(num)
	@santas = []
	example_names = ["Sarah", "Sting", "Sigmond", "Stella", "Stephen", "Sidney", "Singin"]
	example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
	example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
	
	num.times do |num|

	new_santa = Santa.new(example_names.sample(example_names.length), example_genders.sample(example_genders.length), example_ethnicities.sample(example_ethnicities.length)) 
				# name = example_names.rand(example_name.length)
				# gender = example_genders.rand(example_genders.length)
				# ethnicity = example_ethnicities.rand(example_ethnicities.length)
				
					 new_santa.age = (1..140).to_a.sample


# Emmanual said these sage words otherwise there is no variable to accept the random number

# [11:21]  
# if you had another method that created age and called it before this that would work too

# [11:21]  
# basically, initialize sets all of the basic information for the class. What needs to exist for this class to exist
	@santas << new_santa
		# index = 0 do |num|
		# 	until num == index 
		# 		name = example_names.rand(example_name.length)
		# 		gender = example_genders.rand(example_genders.length)
		# 		ethnicity = example_ethnicities.rand(example_ethnicities.length)
		# 		age = Random.rand(141)
		# 	santas << Santa.new (name, gender,ethnicity)
		# 	# name = example_names(rand(example_name.length)
		# 	# gender = example_genders(rand(example_genders.length)
		# 	# ethnicity = example_ethnicities(rand(example_ethnicities.length)
		# 	# age = Random.rand(141)

		# index += 1
	
	end
end 

santa_generator(5)
p @santas[4].age






