console.log("js file is running")

//add border to photo - Release 1
var photo = document.getElementById('coffee-photo');
photo.style.border = "2px dashed white";

//Add paragraph
var newpara = document.createElement('p');
var textpara = document.createTextNode('This is a new paragraph');
newpara.appendChild(textpara);

var element = document.getElementById('exampleelement');
element.appendChild(newpara);

//Event listener - change font upon clicking button
function changefont() {
  var expara = document.getElementById('fontchanging');
  expara.style.fontFamily = 'Playfair Display';
}

var button = document.getElementById('button');
button.addEventListener("click", changefont);
