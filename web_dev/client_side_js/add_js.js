// var list = document.getElementById("list");

// list.insertAdjacentHTML('beforeend', '<p>For information on the stages of enlightenment click <a href="https://en.wikipedia.org/wiki/Four_stages_of_enlightenment">here</a></p>');


var link = document.getElementsByTagName("a");

function addParagraph(event){
	var list = document.getElementById("list");
	list.insertAdjacentHTML('beforeend', '<p>For information on the stages of enlightenment click <a href="https://en.wikipedia.org/wiki/Four_stages_of_enlightenment">here</a></p>');
}

var list = document.getElementById("list");
list.addEventListener("click", addParagraph);

