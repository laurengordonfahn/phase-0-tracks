// Goal 1 parapmeter class = > string
	// 1) create a function with parmeter "Flip-Flop"
	// 	console.log the parmeter so you know what it was when you started
// Goal 2 reverse string

	// 2) Make an empty string holder
		// create a for loop 
	// 	that sets a counter for that loop of i = to the length of the string
	// 	that defines the condition for the loop i >= 0 
	// 	var[i] = console.log  the results
	// pring the empty string at the end and then step 3 isn't needed

// not needed with amended 2 
	//Goal 3 printing the reveresed string in a line
	// 3) creat a for loop for  adding the var[i]
	// 	that sets the counter i= string.length
	// 	that defines the condtion for the loop i>=10
	// 	counter increment i+= string.length so only get the last out put



	// 	for (var i =10; i >=0; i-=1) {
	// console.log(i);


	//1)
function reverse(string) {
	var string;

	console.log(string);


	// 2) 
	flipped = ""

	for (var i = string.length - 1; i >= 0; i--) {

		flipped = flipped + string[i]

	}
	console.log(flipped);

}

reverse("Flip-Flop");

var variable = 10

for(var i = 1; i < variable; i++){
	if ( i % 2 == 0){
		reverse("Flip-Flop");
	}
} 



	//3) Apparently this isn't needed when we do the above!
// for (var i = string.length; i>=10; i += string.length) {
// 	console.log(i)
// }



