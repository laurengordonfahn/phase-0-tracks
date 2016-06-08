



	
# class for ear plugs and the attributes will be all instance variable (@) material, deciple_level, color, number_in_warehouse
# make an intialize method		
class Ear_plug_types
	def intialize(material, deciple_level, color, number_in_warehouse)
		@material = material
		@deciple_level = deciple_level.to_i
		@color = color
		@number_in_warehouse = number_in_warehouse.to_i
	end


#make a def box_maker(num_desired, color_desired, deciple_desired, material_desired)
		#I will need an if statement that goes throuh each variable to make sure it fits the criteria
	 	#then a way to update the numer of ear plugs of that type in the warehouse
		
	def box_maker(num_desired, color_desired, deciple_desired, material_desired)
		if number_in_warehouse - num_desired >= 0
		&&
		   color_desired == color
		&&
			deciple_desired <= deciple_level
		&&
			material_desired == material


			number_in_warehouse = number_in_warehouse - number_desired
		end
	end


# make a deciple checker with variables sound and deciple_level

	def deciple_checker(sound, deciple_level)
		noise_hash = { "classical instrument": "18 or greater", 
			"electir instrument": "30 or greater"
			"banned saw": "33 or greater"
		}
		if sound == "classical instrument" && deciple_level >= 18
			puts "you are safe."
		elsif sound == "electric instrument" && deciple_level >= 30
			puts "you are safe."
		elsif sound == "banned saw" && deciple_level >= 33
			puts "you are safe."
		else
			puts "you need a #{noise_hash[:sound]}"

		end
