#Release 0
# def practice
# 	puts "This is just a test."
# 	yield
# 	puts "Thank you."
# end

# practice { puts "1, 2, 3"}

#Release 1

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

#Release 2.1
shoes_height = [ 2, 5, 1.5, 1]
shoes_height_hash = {highest_heal: 2, shortest_heal: 1.5, sneaker:1}


# p shoes_height
shoes_height.delete_if {|inches| inches > 1.25}
p shoes_height

p shoes_height_hash
shoes_height_hash.delete_if {|type, inches| inches >1.25}
p shoes_height_hash

#Release 2.2
shoes_height = [ 2, 5, 1.5, 1]
p shoes_height
shoes_height.keep_if {|inches| inches > 1.25}
p shoes_height


shoes_height_hash = {highest_heal: 2, shortest_heal: 1.5, sneaker: 1}
p shoes_height_hash
shoes_height_hash.keep_if{ |type, inches| inches < 1.5}
p shoes_height_hash


#Release 2.3
shoes_height = [ 2, 5, 1.5, 1]
p shoes_height
shoes_height.select! {|inches| inches > 1.25}
p shoes_height

shoes_height_hash = {highest_heal: 2, shortest_heal: 1.5, sneaker: 1}
p shoes_height_hash
shoes_height_hash.select!{ |type, inches| inches < 1.5}
p shoes_height_hash

#Release 2.4
shoes_height = [ 2, 5, 1.5, 1]
p shoes_height
p shoes_height.drop_while {|inches| inches > 1.25}



shoes_height_hash = {highest_heal: 2, shortest_heal: 1.5, sneaker: 1}
p shoes_height_hash
p shoes_height_hash.drop_while{ |type, inches| inches > 1.25}














