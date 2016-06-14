// // Release 0: Pseudo Code
// // Goal:  
// // 	create function that takes 
// // 		input: an array of strings
// // 		returns/output: longest word or phrase in the array
// // 		test: function(["long phrase", "longest phrase", "longer phrase"])
// // 			test return:  "longest phrase"
// 	Step 1: create variable that is an empty array array_of_strings = [ ]
// 	Step 2: open a function called longest_string
// 			with parameter (array_of_strings)
// 	Step 3: code in the function create a loop
// 			to look at each string by its index array_of_strings[i]
// 	Step 4: at each step of looking at each string get the .length of the string 
// 	// 		put that length into a variable length = array_of_strings[i].length
// 	// Step 5: feed each length into a new variable array lengths_array = lengths_array + var length 
// 	Step 6: create a loop with in a loos of code that looks at each variable length and 
// 			if array_of_strings[i].length > array_of_strings[i+1].length
// 				winner_of_length_war = array_of_strings[i].length 
// 			elsif array_of_strings[i].length < array_of_strings[i+1].length
// 				winner_of_length_war = array_of_strings[i+1].length 
// 			else 
// 				winner_of_length_war = array_of_strings[i]

// 			create an array that contains 
// 			winners = winners + winners of length wars feed this into the above
// 			then do this until winners. length = 1

