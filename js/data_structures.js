// OBJECT
var colors = ['rainbow', 'indigo', 'emerald', 'turquoise'];
var names = ['Lil Sebastian', 'Biggie', 'Muffin', 'Kevin'];

colors.push('blood red');
names.push('Mish');

var horses = {};

for (var i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i];
};


// DRIVER CODE FOR OBJECTS
console.log(horses)


// CONSTRUCTOR FUCTION
function Car(model_year, color, has_sunroof) {
  this.model_year = model_year;
  this.color = color;
  this.has_sunroof = has_sunroof;

  this.accelerate = function() {
    if (has_sunroof == true) {
      console.log('*opens sunroof*')
      console.log('VROOM VROOM');
    } else {
      console.log('vroom vroom');
    }
  }
};

// DRIVER CODE FOR CONSTRUCTOR FUNCTION
var model_T = new Car(1908, 'black', true);

model_T.accelerate()

var batmobile = new Car(2017, 'jet black', false)

batmobile.accelerate()

// Looping through keys and values of an object
for (var key in horses) {
  if (horses.hasOwnProperty(key)) {
    console.log(key + ', ' + horses[key])
  }
}
