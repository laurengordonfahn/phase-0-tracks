# # take "Felicia Torres"

# # 1) Goal: Swap the first and last name 
puts "Type the full name to be spy-a-fied"
name_to_be_altered = gets.chomp

def name_changer1(name_to_be_altered)
	# 	1) Breaking it into a word array

	name_arrayed = name_to_be_altered.split(' ')
	p name_arrayed
	# 	2) Doing a method that switches the first and second elements in the array
	p name_arrayed.insert(0, name_arrayed.delete_at(1))
end


names_switched = name_changer1(name_to_be_altered)
p "This is the product of the first step #{names_switched}."

# # 2) Goal: Change vowels to the next vowel "aeiou"
# 		# 1) A method that breaks the name into each letter, array to a string to an array of letters
def name_slicer(names_switched)
	p stringed_switched_name = names_switched.join(' ')
	p stringed_switched_name.split("")
end

name_split = name_slicer(names_switched)
p "This is the product of the first step of step 2 #{name_split}"


		# 2) A method that identifies "aeiou" 
	#use index to call a letter in the string and then make a while statment
# call_a_letter(name_split)
		# 3) A method that then converts each identifed vowel and maps 
		# 	it to the next in an array of "aeiou"

def call_a_vowel(index)
	index = 0
	while index < name_slicer(names_switched).length

	letter = name_split.fetch(index)

		if letter == "a"
			letter = "e"
		elsif letter == "e"
			letter = "i"
		elsif letter =="i"
			letter = "o"
		elsif letter == "o"
			letter = "u"
		elsif letter == "u"
			letter = "a"
		end
	index += 1
	end
p call_a_vowel(name_slicer(names_switched))
end
call_a_vowel(name_slicer(names_switched))

# 3B) Goal: Change all consonants to the next consonent in the alphabet
	 # - This requires
	 # 	1) A method that maps to a string of consents that does not include vowels

def call_a_consonent(index)
	index = 0

	letter = name_split.fetch(index)

		if letter == "z"
			letter = "b"
		elsif letter == "d"
			letter = "f"
		elsif letter == "h"
			letter = "j"
		elsif letter == "n"
			letter = "p"
		elsif letter == "t"
			letter = "v"
		else letter = letter.next
		end

	index += 1
end
p call_a_consonent()


