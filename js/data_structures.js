var colors = ['rainbow', 'indigo', 'emerald', 'turquoise']
var names = ['Lil Sebastian', 'Biggie', 'Muffin', 'Kevin']

colors.push('blood red')
names.push('Mish')

var horses = {};

for (var i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i]
}


// DRIVER CODE
console.log(horses)
