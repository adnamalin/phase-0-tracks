var colors = ["Blue", "Green", "Red", "Orange"];
var horses = ["Ed", "Stinky", "Buford", "Bill"];

colors.push("Black")
horses.push("Lil' Jumpy");

horseColors = {}
for (var i = 0; i < horses.length -1; i++) {
  horseColors[horses[i + 1]] = colors[i + 1]
}
console.log(horseColors)


function Car(model, year, color) {
    
    console.log("We have a new car:", this);
    
    this.model = model;
    this.year = year;
    this.color = color;
    
    this.rev_engine = function() { console.log("Vroom! Vroom!"); };
    
    console.log("Enjoy your new car!");
};

var new_car = new Car("Chevy", 2009, "black");
console.log(new_car);
new_car.rev_engine();