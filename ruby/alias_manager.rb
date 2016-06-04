# take "Felicia Torres"

# 1) Goal: Swap the first and last name 
puts "Type the full name to be spy-a-fied"
name_to_be_altered = gets.chomp.to_s


def name_changer1(name_to_be_altered)
	# 	1) Breaking it into a word array
	name_arrayed = name_to_be_altered.split(' ')
	p name_arrayed
	# 	2) Doing a method that switches the first and second elements in the array
	p name_arrayed.insert(0, name_arrayed.delete_at(1))
end

names_switched = name_changer1(name_to_be_altered)

# 2) Goal: Change vowels to the next vowel "aeiou"
		# 1) A method that breaks the name into each letter, array to a string to an array of letters
def name_slicer(names_switched)
	p stringed_switched_name = names_switched.join(' ')
	p stringed_switched_name.split("")
end

name_split = name_slicer(names_switched)
p "This is the product of the first step of step 2 #{name_split}"


		# 2) A method that identifies "aeiou" 

		# 3) A method that then converts each identifed vowel and maps 
		# 	it to the next in an array of "aeiou"
# 2B) Goal: Change all consonants to the next consonent in the alphabet
	 # - This requires
	 # 	1) A method that maps to a string of consents that does not include vowels