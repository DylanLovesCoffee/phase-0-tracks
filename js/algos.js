// FIND THE LONGEST PHRASE
// Create a function that takes an array as its parameter. Iterate through each element in the array.
// Save each elements character length into a separate array.
// Return the highest number value in terms of character length from that array.
// Iterate through our original array once again, and if the character length of an element is equal to the highest character length number value, return that element.

// KEY-VALUE MATCH
// Create a function that takes 2 objects as parameters. Loop through each object's key.
// If any keys match, loop through the values to verify that the values also match.
// If both key and the value matches, return true. Otherwise, all other instances will return false

// Find longest phrase
function max_value(array) {
  char_length = []
  for (var i = 0; i < array.length; i++) {
    char_length.push(array[i].length)
  }
  max_char_length = Math.max(...char_length);
  for (var i = 0; i < array.length; i++) {
    if (max_char_length == array[i].length) {
      console.log(array[i]);
    }
  }
}
// Key-value matching
function match(object_1, object_2) {
  for (var key in object_1) {
    if (object_1.hasOwnProperty(key) == object_2.hasOwnProperty(key)) {
      key_match = true
      if (object_1[key] == object_2[key]) {
        return true
      } else {
        return false;
      }
    } else {
      key_match = false
    }
  }
}


// DRIVER CODE
// Longest phrase
max_value(['tokyo', 'new york', 'paris', 'oslo', 'melbourne'])

// Key-value match
var alpha = {henry: 'poor', thomas: 'rich'}
var beta = {evan: 'moderate', thomas: 'rich'}
console.log(match(alpha, beta))
