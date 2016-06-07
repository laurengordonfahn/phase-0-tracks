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





	def initialize(name)
		puts "Initializing Santa instance...#{name}."
		@name = name

	end
end



sarah = Santa.new("sarah")
small_santa = Santa.new("small santa")
sarah.speak(2)
small_santa.eat_milk_and_cookies("Oatmeal Chocolate-Chip")
