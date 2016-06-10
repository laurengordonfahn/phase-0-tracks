#Step 1 declare a Bird and a Plane class. Then the module for Flight 
#must be placed ABOVE the two classes

module Flight
	def take_off(altitude)
		puts "Taking off and ascending util reaching #{altitude}..."
	end
end


class Bird
	
	include Flight

end



class Plane 

	include Flight

end

bird = Bird.new
bird.take_off(800)

plane =Plane.new
plane.take_off(30000)

