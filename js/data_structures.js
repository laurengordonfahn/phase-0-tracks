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



