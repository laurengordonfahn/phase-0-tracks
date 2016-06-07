#Initalizeing class Santa
class Santa
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
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		age = 0

	end
end



# sarah = Santa.new("sarah")
# small_santa = Santa.new("small santa")
# sarah.speak(2)
# small_santa.eat_milk_and_cookies("Oatmeal Chocolate-Chip")

# array of santa names


# an empty container for the santa instances
santas = []
example_names = ["Sarah", "Sting", "Sigmond", "Stella", "Stephen", "Sidney", "Singin"]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_names.length.times do |i|
  santas << Santa.new(example_names[i], example_genders[i], example_ethnicities[i])
end



