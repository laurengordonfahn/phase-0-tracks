# take "Felicia Torres"

# 1) Goal: Swap the first and last name 
puts "Type the full name to be spy-a-fied"
name_to_be_altered = gets.chomp.to_s


def name_changer1(name_to_be_altered)
	# 	1) Breaking it into a word array
	name_arrayed = name_to_be_altered.split(' ')
	p name_arrayed
	# 	2) Doing a method that switches the first and second elements in the array
	names_switched = name_arrayed.insert(0, name_arrayed.delete_at(1))
end

p name_changer1(name_to_be_altered)
# 2) Goal: Change vowels to the next vowel "aeiou"
	# - This requires
		# 1) A method that identifies "aeiou" 
		# 2) A method that then converts each identifed vowel and maps 
		# 	it to the next in an array of "aeiou"
# 2B) Goal: Change all consonants to the next consonent in the alphabet
	 # - This requires
	 # 	1) A method that maps to a string of consents that does not include vowels