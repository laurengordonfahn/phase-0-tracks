module Shout
	def self.yell_angrily(words)
		words + "!!!" + ":("
	end

	def self.yell_happily(words)
		words + " all the live long daaaaaay!!!" + ":)"
	end
end

p Shout.yell_angrily("what the")
p Shout.yell_happily("yippy")