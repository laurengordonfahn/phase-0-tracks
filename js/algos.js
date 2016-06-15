// // Release 0: Pseudo Code
// // Goal:  
// // 	create function that takes 
// // 		input: an array of strings
// // 		returns/output: longest word or phrase in the array
// // 		test: function(["long phrase", "longest phrase", "longer phrase"])
// // 			test return:  "longest phrase"
// 	Step 1: open a function called longest_string
// 			with parameter (array_of_strings)
// 	Step 2: create variable that is an empty array array_of_strings = [ ]
// 	Step 3: code in the function create a for loop
// 			to look at each string by its index array_of_strings[i]
// 	Step 4: at each step of looking at each string get the .length of the string 
// 			put that length into a variable length = array_of_strings[i].length
//  Step 5: feed each length into a new variable array lengths_array = lengths_array + var length 
// 	Step 6: create a loop with in a loos of code that looks at each variable length and 
// 			if array_of_strings[i].length > array_of_strings[i+1].length
// 				winner_of_length_war = array_of_strings[i]
// 			elsif array_of_strings[i].length < array_of_strings[i+1].length
// 				winner_of_length_war = array_of_strings[i+1]
// 			else 
// 				winner_of_length_war = array_of_strings[i]

// 			create an array that contains 
// 			winners = winners + winners of length wars feed this into the above
// 			then do this until winners. length = 1

// ok so at step 5 and 6 I was making it too complicated after looking at everything what I realized was I needed to create an updated 
// variable that represented the length of the last one and compared that 'length' to the next string and keep updated
// until the longest aka winner_length one was found. Then I just print it much much easier, gosh. 

function longest_string(array_of_strings){
	
	var length = 0

	var winner_length;
	

	for(var i = 0; i < array_of_strings.length; i++){
		if(array_of_strings[i].length > length){
			 var length = array_of_strings[i].length;
			 winner_length = array_of_strings[i];
		}
		
	}
	console.log(winner_length);
}

longest_string(["long phrase", "longest phrase", "longer phrase"])

//Release 2
function take an integer 
to create an array of strings where length of the array = integer

function to generator random strings (from 1 to 10 letters) to put into the array above


