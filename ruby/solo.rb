



	
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


def order_form
	puts "The name for this order?"
	@box_name = gets.chomp.to_s
	box_name = [ ]
	puts "What material would you like your earplugs?"
	material = gets.chomp.to_s
	puts "What deciple level would you like your earplugs to protect against?"
	deciple_level = gets.chomp.to_i 
	puts "What color would you like your earplugs to be?"
	color = gets.chomp.to_s
	puts " What number of ear plugs would you like (multiple of twos make sense)?"
	number_in_warehouse = gets.chomp.to_i
	age = 0
	box_name << initialize(material, deciple_level, color, number_in_warehouse, age)
end
		
def order_form_repeat_request
	puts"Would you like to make another box of earplugs? (Yes or No)"
	call_for_new_earplug_order = gets.chomp_to.s do |request_input|
		if call_for_new_earplug_order == "Yes" || "yes"
			@your_full_order = [ ]
			@your_full_order << order_form
		elsif call_for_new_earplug_order == "No" || "no"
			puts "You have decided to no make any more ear plugs
			  this is what you have orderded so far#{****}"
		end
end


def user_interface
	puts "This is a program to help you order ear plugs"
	puts "Would you like to create a box of ear plugs? (Yes or No)"
	call_for_new_earplug_order = gets.chomp_to.s do |request_input|
		if call_for_new_earplug_order == "Yes" || "yes"
			@your_full_order = [ ]
			@your_full_order << order_form

			order_form_repeat_request

		elsif call_for_new_earplug_order == "No" || "no"
			puts "You have decided to no make any more ear plugs
			  this is what you have orderded so far#{@your_full_order}"
	  	end
	  end
end

p useer_interface












