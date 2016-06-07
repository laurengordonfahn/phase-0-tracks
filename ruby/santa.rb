#Initalizeing class Santa
class Santa
end

# Instance Methods for class Santa
class Santa
	def speak(number_of_times)
		index = 0
		until number_of_times == index 
			puts "Ho, ho, ho!, Haaaappy holidays!"
			index +=1
		end 

	end
end


class Santa
	def eat_milk_and_cookies(type_of_cookie)
		puts " That was a good #{type_of_cookie}"
	end
end


class Santa
	def initialize(instance_method_to_be_called)
		puts "Initializing Santa instance... "
	end
end