#Release 1
# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + ":("
# 	end

# 	def self.yell_happily(words)
# 		words + " all the live long daaaaaay!!!" + ":)"
# 	end
# end

# p Shout.yell_angrily("what the")
# p Shout.yell_happily("yippy")


#Relase 3 make the shout module a mixins, meaning taking away self. key
#word in order that it looks like an isntance method so it can 
#be incorperated into a class
module Shout
	def yell_angrily(words)
		words + "!!!" + ":("
	end

	def yell_happily(words)
		words + " all the live long daaaaaay!!!" + ":)"
	end
end

class Teenagers

	attr_accessor :age, :how_much_they_dislike_their_folks
	attr_reader :name

	def initialize(name, age, how_much_they_dislike_their_folks)
		@name = name
		@age = age.to_i
		@how_much_they_dislike_their_folks = how_much_they_dislike_their_folks.to_i
	end

	def want_to_go_to_party(parents_response)

		if parents_response.downcase == "yes"
			yell_happily("Thank you")
		elsif parents_response.downcase == "no" && @how_much_they_dislike_their_folks > 5
			yell_angrily " I hate you and I am never speaking to you again"
		elsif parents_response.downcase == "no" && @how_much_they_dislike_their_folks < 5
			yell_angrily "I can't stand this kind of repression, I thought you trusted me"	
		else parents_response == " "
			yell_angrily("I never understand you and you don't understand me") 
		end
	end

	
	include Shout

end

class Adults

	attr_accessor :age, :how_many_children_they_have
	attr_reader :name

	def initialize(name, age, how_many_children_they_have)
		@name = name
		@age = age.to_i
		@how_many_children_they_have = how_many_children_they_have
	end

	def had_a_long_day_at_work
		if @how_many_children_they_have > 2
			yell_angrily("Why doesn't any one help clean up around here")
		elsif @how_many_children_they_have == 0
			yell_happily("Thank goodness I can just crash on the couch right now")
		else @how_many_children_they_have <=2
			yell_angrily("I can't take this today we are going out for dinner")
		end

	end
	


	include Shout
end

claudia =Teenagers.new("Claudia", 15, 6)
carl = Teenagers.new("Carl", 16, 3)
martha = Adults.new("Martha", 47, 2)
chris = Adults.new("Chris", 56, 3)
jamie = Adults.new("Jamie", 34, 0)

p claudia.want_to_go_to_party("yes")
p claudia.want_to_go_to_party("no")
p claudia.want_to_go_to_party("maybe")
p carl.want_to_go_to_party("yes")
p carl.want_to_go_to_party("no")
p carl.want_to_go_to_party("maybe")
p martha.had_a_long_day_at_work
p chris.had_a_long_day_at_work
p jamie.had_a_long_day_at_work

