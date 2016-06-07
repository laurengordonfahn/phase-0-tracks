class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

dill = Puppy.new
p dill.fetch("ball")


class Puppy
	def speak(number_of_times)
		if number_of_times == 0
			p " "
		elsif number_of_times.to_i == 0
			puts "The Value of your argument is not an integer."
		elsif number_of_times = number_of_times.to_i
			index = 0
				until number_of_times == index
					puts "Woof!"
					index +=1
				end
		end
	end
end

p dill.speak(3)


