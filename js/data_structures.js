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

var name = 'Daffodil Lionheart';

var color = 'sabled green';

horse_color.push(color);

horse_name.push(name);

console.log(horse_color);

console.log(horse_name);

var horse = { };


for (var i = 0; i < horse_name.length; i++) {
  horse[horse_name[i]] = horse_color[i];
}

console.log(horse);

//Release 3
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




