// RELEASE 0
var colors = ["blue", "red", "yellow", "white"]

var names = ["bob", "kevin", "becky", "joe"]

colors.push("cerulean")
names.push("pablo")

console.log(colors)
console.log(names)

// RELEASE 1

// Take a name make a key
// Take a color make a value
// IE: {"bob": blue, "kevin":red, etc...}

horseAndColor = {}
for (var i = -1; i < names.length -1; i++) {
  horseAndColor[names[i+1]] = colors[i+1]
}
console.log(horseAndColor)

// RELEASE 2

function Car(brand, type, seats) {
  this.brand = brand;
  this.type = type;
  this.seats = seats;
  this.start =
    function()
    {console.log('Vroom vroom'); };
}

var mycar = new Car('hyundai','suv', 4);
mycar.start();

var amandasCar = new Car('tesla', 'sedan', 4)
amandasCar.start();

var jillsCar = new Car('mercedes', 'luxury', 4)
jillsCar.start();
