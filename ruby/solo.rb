



	
# class for ear plugs and the attributes will be all instance variable (@) material, deciple_level, color, number_in_warehouse
# make an intialize method		
class Ear_plug_types
	attr_accessor :number_in_warehouse
	attr_reader :material, :deciple_level, :color

	def initialize(material, deciple_level, color, number_in_warehouse, age)
		@material = material
		@deciple_level = deciple_level
		@color = color
		@number_in_warehouse = number_in_warehouse
		@age = age 
	end


#make a def box_maker(num_desired, color_desired, deciple_desired, material_desired)
		#I will need an if statement that goes throuh each variable to make sure it fits the criteria
	 	#then a way to update the numer of ear plugs of that type in the warehouse
	 	#turns out these dreams require me to have a class that collects all the instances of this class and then manages 
	 	#them as they change, this was too much for this week so I did what you find below!
		
	def age_checker
		if @age > 3
			puts "These have expired and may have degraded"
		end
	end


# make a deciple checker with variables sound and deciple_level

	def deciple_checker(sound)
		noise_hash = { "classical instrument"=> "18 or greater", 
			"electir instrument"=> "30 or greater",
			"banned saw"=> "33 or greater"
		}
		if sound == "classical instrument" && deciple_level >= 18
			puts "you are safe."
		elsif sound == "electric instrument" && deciple_level >= 30
			puts "you are safe."
		elsif sound == "banned saw" && deciple_level >= 33
			puts "you are safe."
		else
			puts "your earplug is not adiquite you need a #{noise_hash[sound]} deciple rated earplug."

		end
	end
end

p lot1 = Ear_plug_types.new("foam", 18, "purple", 250, 2)
p lot2 = Ear_plug_types.new("clay", 33, "orange", 208, 4)

p lot1.number_in_warehouse= 20
p lot1
lot2.deciple_checker("banned saw")

def user_interface()
	puts "This is a program to help you "
