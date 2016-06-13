

# swap first and last names.
def name_swap(full_name)
	first_last = full_name.split(" ")

	swapped_name = first_last[1] + " " + first_last[0]
	return swapped_name
end

#p name_swap("adam boz")

# convert a single vowel to the appropriate next vowel.
# if character is not a vowel, return without any transformation"
def convert_vowel_with_hash(character)
	translation_table = {
		"a" => "e",
		"e" => "i",
		"i" => "o",
		"o" => "u",
		"u" => "a",
	}

	if translation_table.has_key?(character)
		return translation_table[character]
	else
		return character
	end
end

def convert_vowel_with_array(character)
	vowels = %w( a e i o u a )
	index  = vowels.index(character)

	if index.nil?
		return character
	else
		# boring alternative:
		# index_next = index + 1 % vowels.length
		
		index_next = index + 1

		return vowels[index_next]
	end
end

def convert_vowel(character)
	convert_vowel_with_array(character)
end

# p convert_vowel("a")
# p convert_vowel("u")
# p convert_vowel("n")

# convert all vowels to the next vowel.
# examples: a -> e, i -> o, u -> a
def convert_vowels(full_name)
	converted_name = ""

	full_name.each_char do |character|
		converted_name = converted_name + convert_vowel(character)
	end

	return converted_name
end

def alias_name(full_name)
	converted = name_swap(full_name)
	converted = convert_vowels(converted)
	return converted
end

p alias_name("adam boz")
p alias_name("lauren gordon-fahn")
