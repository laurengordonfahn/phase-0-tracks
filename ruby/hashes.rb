#this is the out line of our hash key's 
#client_name = {:name :age :number_children :decor_theme :likes_grey :like_brown :budget :street_address}

#ask the user for all the values for each key term in the hash
puts "Please, fill out the following form"
#set-up for the empty hash
client_name = {}

#request for first value for the key word offered in line 10
puts "Client Name:"
client_name[:name] = gets.chomp.to_s

#next line is a test to see if it added the input and will be noted out but shows it was used to test line 5-8
#p client_name

puts "Client Age:"
client_name[:age] = gets.chomp.to_i

puts "Number of Children:"
client_name[:number_children] = gets.chomp.to_s

puts "Client Decor Theme:"
client_name[:decore_theme] = gets.chomp.to_s

puts "Do you like Grey? (true or false):"
client_name[:likes_grey] = gets.chomp
	
	if client_name[:likes_grey] == "Yes"
		client_name[:likes_grey] =  true
	elsif client_name[:likes_grey] == "No"
		client_name[:likes_grey] = false
	 elsif client_name[:likes_grey] == true
 		client_name[:likes_grey] = true
	elsif client_name[:likes_grey] == false
  		client_name[:likes_grey] = false
  	#### SOMETHING IS WRONG HERE
	else puts "Please, answer using true or false, do you like grey?"
	end

#next line is a test to see if it added the input and will be noted out but shows it was used to test line 25-32
#p client_name

 puts "Do you like Brown? (true or false):"
 client_name[:likes_brown] = gets.chomp
 	
	if client_name[:likes_brown] == "Yes"
		client_name[:likes_brown] =  true
	elsif client_name[:likes_brown] == "No"
		client_name[:likes_brown] = false
	elsif client_name[:likes_brown] == true
 		client_name[:likes_brown] = true
 	elsif client_name[:likes_brown] == false
 		client_name[:likes_brown] = false
	####SOMETHING WRONG HERE####
	else puts "Please, answer using true or false, do you like brown?"
	end

 puts "What is your Budget for this Project?:"
 client_name[:budget] = gets.chomp.to_i
 	

 #I would like to figure out how to remove a money symbol if someone puts it isn but Ican't
 #def remove_moneysymbol(budget_reply)
 	# 	x = " "
 	# 	if client_name[:budget] == "$x "
 	# 	client_name[:budget] = " ".slice
 	# 	client_name[:budget] 
 	# end

puts "What is your street address?:"
 client_name[:street_address] = gets.chomp.to_s

#next line is a test to see if it added the input and will be noted out but shows it was used to test line 16-35
#p client_name

#convert the user input to the appropriate data type ie .to_s .to_i .to_a if needed

#print the hash with key and values present for user to view
p client_name

#propmpt the user to update any keys one time, "none" will skip this step but if a key is called the program should allow for update, note: use stringmethod to convert a string to a symbol
puts "View the above data, if you would like to update a catagory please type in the catagory you want to edit,
		If you want to leave this file as is type, 'none' to save and end."

update = gets.chomp

def update_method(update)
	if  update == "none"
		p client_name
	else update == " "
		client_name[:update]
		puts "Please, type the updated information for catagory #{update}"
	
		new_value = gets.chomp
	
		if new_value == " "
			client_name[:update] = new_value
		end
	end
end


#print the latest version of the hash and exit program
p client_name
puts "Thank you for storing your Client information in a hash!"