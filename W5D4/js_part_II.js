function titleize(array, printCallback){
  let titleized = array.map(function(el) {
    return `Mx. ${el} Jingleheimer Schmidt`;
  });

  printCallback(titleized);
}

function printCallback(array) {
  array.forEach(function(el) {
    console.log(el)
  });
}

titleize(["Mary", "Brian", "Leo"], printCallback)

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function () {
  console.log(`${this.name} the elephant goes 'phrRRRRR!!!'`);
}

Elephant.prototype.grow = function () {
  this.height += 12;
}

Elephant.prototype.addTrick = function (trick) {
  this.tricks.push(trick);
}

Elephant.prototype.play = function () {
  console.log(`${this.name} is ${this.tricks}!`)
}

Elephant.prototype.paradeHelper = function () {
  console.log(`${this.name} is trotting by!`);
}

let e1 = new Elephant('Earl', 30, ["trick1, trick2"]);
e1.trumpet();
e1.grow();
e1.addTrick('trick3');
e1.play();

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];


herd.forEach(function (elephant) {
  elephant.paradeHelper();
});
