// Release 0 Work with Arrays
var horse_color = ['chestnut', 'buckskin', 'palanino', 'fuchsia'];

var horse_name = ['George Washington', 'Phyllis', 'American Pharaoh', 'Aaron Burr', 'Napoleon'];

var name = 'Daffodil Lionheart';

var color = 'sabled green';

horse_color.push(color);

horse_name.push(name);

console.log(horse_color);

console.log(horse_name);

//Release 1 Build an Object Keys are names  values are color
// for loop where i gets assigned
// horse_color[0] = horse_name[0]

var horse_color = ['chestnut', 'buckskin', 'palanino', 'fuchsia'];

var horse_name = ['George Washington', 'Phyllis', 'Aaron Burr', 'Napoleon'];
//est.variables to feed into the line functions of how to add color and name
var name = 'Daffodil Lionheart';

var color = 'sabled green';
// line funcitons to add color and name to the var horse_color and horse_name
horse_color.push(color);

horse_name.push(name);

//printing drive code to test if the above line funcitons worked

console.log(horse_color);

console.log(horse_name);

//est vairable to hold the merged "hash like thing" and then creating a loop to 
// fill in the name:color "hash like thing"

var horse = { };


for (var i = 0; i < horse_name.length; i++) {
  horse[horse_name[i]] = horse_color[i];
}

console.log(horse);

//Release 2  build many objects with a Constructor function
//function that creates a vehicle
// with various data types for a few different properties

function Auto(make, model, year, domestic){
  console.log("Automobile:", this);
  this.make = make;
  this.model = model;
  this.year = year;
  this.domestic = domestic;
  
  this.recall = function(){
     if(make == 'Toyota' && model == "Camry"){
        console.log("Recall on " + make + model);
     }else{
       console.log("Your may be good go!")
     }
      
  }
}

// var new_car = new Auto("Toyota", "Highlander", 1999, false);
var new_car = new Auto("Toyota", "Camry", 1999, false);

console.log(new_car);
new_car.recall();

//Release 3

console.log(horse);

function value_call(horse){
	for (var horse_color in horse) {
		console.log(horse[horse_color])
	}
}

function key_call(horse){
	for (var key in horse){
		console.log(key)
	}
}
	
value_call(horse);
key_call(horse);

//or should work but it doesn't seem to 
// console.log(horse[horse_name]);
// console.log(horse[horse_color]);

// Advantages to using construcotr funcitons: it is not a differentiated function by name
// it is created the same way as a normal function just the code that it holds distinguishes it as a constructor function.  
// Adds behavior to an object and adds methods to an object.
// Allow to have multiple instances of an object
// Disadvantages to using constructor funcitons: you can call it as a fucntion or as a constructor and create new and that  option can make your code hard to read and insconsistent




