// Take a word from the user and store in a variable. For each letter of the word, the sum of the number of letters will equal a  separate variable, 'i'. Until  said variable is greater than -1, print each letter of our word on to the console. Subtract 1 from our variable every time a letter is printed.

function reverse(word) {
  var reversed_word = '';
  for (var i = word.length-1; i > -1; i--) {
    reversed_word += word[i]
  }
  console.log(reversed_word);
}

reverse('hello');
