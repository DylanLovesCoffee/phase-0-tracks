var colors = ['rainbow', 'indigo', 'emerald', 'turquoise'];
var names = ['Lil Sebastian', 'Biggie', 'Muffin', 'Kevin'];

colors.push('blood red');
names.push('Mish');

var horses = {};

for (var i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i]
};


// DRIVER CODE
// console.log(horses)

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

var model_T = new Car(1908, 'black', true);

model_T.accelerate()

var batmobile = new Car(2017, 'jet black', false)

batmobile.accelerate()
