# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

# end

# dill = Puppy.new
# p dill.fetch("ball")


# class Puppy
# 	def speak(number_of_times)
# 		if number_of_times == 0
# 			p " "
# 		elsif number_of_times.to_i == 0
# 			puts "The Value of your argument is not an integer."
# 		elsif number_of_times = number_of_times.to_i
# 			index = 0
# 				until number_of_times == index
# 					puts "Woof!"
# 					index +=1
# 				end
# 		end
# 	end
# end

# p dill.speak(3)

# class Puppy

#   def fetch(toy)
#   puts "I brought back the #{toy}!"
#   toy
#   end

#   def speak(num)
#   p "Woof!" * num.to_i
#   end

#   def roll_over
#   p "*rolls over*"
#   end

#   def dog_years(num)
#   p num.to_i * 7
#   end

#   def shake_hands(num)
#   p "*puts paw out*" * num.to_i
#   end

#   def initialize
#   p "Initializing new puppy instance..."
#   end

# end

# # DRIVER CODE

# george = Puppy.new

# george.fetch("stick")
# george.speak(3)
# george.roll_over
# george.dog_years(3)
# george.shake_hands(2)






class Kittens
	def initialize
		p "Intiializing a new kitten"
	end

	def meow(num)
		p "meow" * num.to_i
	end

	def sharpen_nails(furniture, num)
		p "kitten sharpens nails on #{furniture} for #{num.to_i} seconds."
	end

end

kitten1 = Kittens.new
kitten1.meow(7)
kitten1.sharpen_nails("couch", 10)


kitten_collection = [ ]
	index = 0
	until kitten_collection.size > 49
		 kitten = Kittens.new
		 
		kitten_collection << kitten

		index +=1
	end
p kitten_collection

kitten_collection.each do |kitten| 
	kitten.meow(2)
	kitten.sharpen_nails("couch", 3)

	end










