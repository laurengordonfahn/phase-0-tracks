



	
# class for ear plugs and the attributes will be all instance variable (@) material, deciple_level, color, number_in_warehouse
# make an intialize method		
class EarPlugTypes
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

# p lot1 = Ear_plug_types.new("foam", 18, "purple", 250, 2)
# p lot2 = Ear_plug_types.new("clay", 33, "orange", 208, 4)

# p lot1.number_in_warehouse= 20
# p lot1
# lot2.deciple_checker("banned saw")

class LineItem
	attr_accessor :name
	attr_accessor :ear_plug_type
	def initialize(name,ear_plug_type)
		@name = name
		@ear_plug_type = ear_plug_type
	end
end

def order_form
	puts "whats the name of this order"
	box_name = gets.chomp
	puts "What material would you like your earplugs?"
	material = gets.chomp.to_s
	puts "What deciple level would you like your earplugs to protect against?"
	deciple_level = gets.chomp.to_i 
	puts "What color would you like your earplugs to be?"
	color = gets.chomp.to_s
	puts " What number of ear plugs would you like (multiple of twos make sense)?"
	number_in_warehouse = gets.chomp.to_i
	age = 0
	ear_plug_type = EarPlugTypes.new(material, deciple_level, color, number_in_warehouse, age)

	LineItem.new(box_name,ear_plug_type)
end

def user_interface
	puts "This is a program to help you order ear plugs"

	your_full_order = []

	puts "Would you like to create a box of ear plugs? (Yes or No)"
	call_for_new_earplug_order = gets.chomp.downcase 
	
	until call_for_new_earplug_order == "no"

		if call_for_new_earplug_order == "yes" 
			new_order = order_form

			your_full_order << new_order


			puts "Would you like to create a box of ear plugs? (Yes or No)"
			call_for_new_earplug_order = gets.chomp.downcase 
		else
			puts "Your request was not understood please type in 'yes' or 'no' if you would like to make another order order or ear plugs."
			call_for_new_earplug_order = gets.chomp.downcase 
		end
	end

	puts "You have decided to not make any more ear plugs this is what you have orderded so far #{your_full_order}"

end

p user_interface












