# def practice
# 	puts "This is just a test."
# 	yield
# 	puts "Thank you."
# end

# practice { puts "1, 2, 3"}

array = ["ball", "top", "block"]
hash = {book: "A Bad One", movie: "A Good One", tv_show: "An Ok One"}

array.each do |toy|
	puts toy
end

hash.each do |media, title|
	puts "The name of the #{media} is #{title}"
	puts(media,title)
end

array.map do |toy|
	puts toy
end

array.map! do |toy|
	toy += "!"
end

p array



