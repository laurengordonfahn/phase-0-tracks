# # take "Felicia Torres"

#PART 1) The following switches the first and last name
def name_swap(name_to_be_altered)
	#STEP 	1) Breaking it into a word array

	name_arrayed = name_to_be_altered.split(' ')
	# STEP	2) Doing a method that switches the first and second elements in the array
	name_arrayed.insert(0, name_arrayed.delete_at(1))
end


#PART 2) Goal: Change vowels to the next vowel "aeiou"


#STEP 1) A method that breaks the name into each letter, array to a string to an array of letters
def name_slicer(names_switched)
	stringed_switched_name = names_switched.join(' ')
	stringed_switched_name.split("")
end

#STEP 2) A method that identifies "aeiou" 
	
		# 3) A method that then converts each identifed vowel and maps 
		# 	it to the next in an array of "aeiou"

def call_a_vowel(array_split_name)
	index = 0
	new_array = []
	while index < array_split_name.length

		letter = array_split_name.fetch(index)

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

		new_array.push(letter)
		index += 1
	end
	return new_array


end


#STEP 3) Goal: Change all consonants to the next consonent in the alphabet
	 # - This requires
	 # 	1) A method that maps to a string of consents that does not include vowels

def call_a_consonent(array_split_name)
	index = 0
	new_array =[]

	while index < array_split_name.length
		letter = array_split_name.fetch(index)

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
		elsif letter != " "
			letter = letter.next
		end

		index += 1
		new_array.push(letter)
	end

	return new_array
end


def converted_name(scrabled_name)
	name_at_this_step = scrabled_name.downcase
	p name_at_this_step
	name_at_this_step = name_swap(name_at_this_step)
	p name_at_this_step
	name_at_this_step = name_slicer(name_at_this_step)
	p name_at_this_step
	name_at_this_step = call_a_vowel(name_at_this_step)
	p name_at_this_step
	name_at_this_step = call_a_consonent(name_at_this_step)
	return name_at_this_step.join('')
end

p converted_name("Felica Torres")


