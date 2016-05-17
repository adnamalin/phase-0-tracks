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
  var list = document.getElementsByTagName('li');
  var index;
  for (index=0; index < list.length; ++index) {list[index].style.fontFamily = 'Playfair Display';
  list[index].style.color = 'white';}
}

var button = document.getElementById('button');
button.addEventListener("click", changefont);

//Create alert box on hover over title
function popup() {
  alert("Hello there!");
}

var head1 = document.getElementById('title');
console.log(head1)
head1.addEventListener("mouseover", popup);
