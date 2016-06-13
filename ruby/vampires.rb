def didnt_lie_about_age(age, birth_year)

	return (2016 - birth_year) == age


	
end

def age_check(age, birth_year)
	return didnt_lie_about_age(age, birth_year) && age < 100
end

puts "How Many Employees will be processed?"
number_to_process = gets.chomp.to_i

number_processed = 0

until number_processed == number_to_process

	puts "What is your full name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	birth_year = gets.chomp.to_i

	puts "Our cafeteria serves garlic bread! Should we order some for you?"
	garlic_bread_order = gets.chomp

	puts " Would you like to enroll in the company health insuracne?"
	insurance = gets.chomp

	puts "Please list allergies: (type done when list is complete)"
	allergies = ""
	while allergies != "done" && allergies != "sunshine"
		allergies = gets.chomp
	end


	if allergies == "sunshine"
		vampire_status = "Probably a vampire"
	else
		vampire_status = "Results inconclusive."

		if age_check(age, birth_year) && ((garlic_bread_order == "yes") || (insurance == "yes"))
			vampire_status = "Probably not a Vampire!"
		end
		if !age_check(age,birth_year) && (garlic_bread_order == "no" || insurance == "no")
			vampire_status = "Probably a vampire"
		end
		if !age_check(age,birth_year) && (garlic_bread_order == "no" && insurance == "no")
			vampire_status = "Almost certainly a vampire."
		end
		if ((name == "Drake Cula") || (name == "Tu Fang"))
			vampire_status = " Definitely a vampire."
		end
	end

	puts(vampire_status)

	number_processed += 1
end

puts "Actually never mind! What do these quetions have to do with anything? Lets' all be friends."



=begin wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false

wolves_like garlic && wolves_like_sunshine
wolves_like_garlic || vampires_like_garlic
wolves_like_garlic && vampires_like_garlic
wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic)
(wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine
vampires_like_garlic
!vampires_like_garlic
!(wolves_like_sunshine && wolves_like_garlic)
=end

