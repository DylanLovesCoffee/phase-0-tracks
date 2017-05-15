// ----- FIND THE LONGEST PHRASE -----
// Create a function that takes an array as its parameter. Iterate through each element in the array.
// Save each elements character length into a separate array.
// Return the highest number value in terms of character length from that array.
// Iterate through our original array once again, and if the character length of an element is equal to the highest character length number value, return that element.

// ----- KEY-VALUE MATCH -----
// Create a function that takes 2 objects as parameters. Loop through each object's key.
// If any keys match, loop through the values to verify that the values also match.
// If both key and the value matches, return true. Otherwise, all other instances will return false

// ----- GENERATE RANDOM TEST DATA -----
// The function will receive a single integer as its parameter.
// An empty array will hold the strings.
// A variable, alpha, will hold the alphabet.
// Create a loop that will create a string by looping through the alpha variable.
// Generate a random number between 1 and 10 that will determine the length of our string, and how many times we will loop through the alphabet.
// Enclose our string creation loop with a new loop, where we will repeat the process above X amount of times. X being the integer given to the function.

// Find longest phrase
function max_value(array) {
  var char_length = []
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

// Generate random test data
function random_data(integer) {
  var array = [];
  var alpha = 'abcdefghijklmnopqrstuvwxyz';
  for (var x = 0; x < integer; x++) {
    var string_length = Math.floor((Math.random() * 10) + 1);
    var new_string = '';
    for (var i = 0; i < string_length; i++) {
    new_string += alpha[Math.floor((Math.random() * 25))];
    }
    array.push(new_string)
  }
  console.log(array)
  return array
}


// ---- DRIVER CODE ----
// --- Longest phrase ---
// max_value(['tokyo', 'new york', 'paris', 'oslo', 'melbourne'])
// --- Key-value match ---
// var alpha = {henry: 'poor', thomas: 'rich'}
// var beta = {evan: 'moderate', thomas: 'rich'}
// console.log(match(alpha, beta))
// --- Random test data ---
// random_data(10)

// Test code 10 times: generating an array of random lengths, printing the array, then finds the longest word and print the result.
for (var i = 0; i < 10; i++) {
  max_value(random_data(Math.floor((Math.random() * 15) + 1)));
}
