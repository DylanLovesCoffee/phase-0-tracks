// Create a function that takes an array as its parameter. Iterate through each element in the array.
// Save each elements character length into a separate array.
// Return the highest number value in terms of character length from that array.
// Iterate through our original array once again, and if the character length of an element is equal to the highest character length number value, return that element.

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

// DRIVER CODE

max_value(['tokyo', 'new york', 'paris', 'oslo', 'melbourne'])
