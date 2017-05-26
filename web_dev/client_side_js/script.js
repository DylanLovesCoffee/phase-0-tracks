console.log("Hello friends! I'm printing in the console!")

var corgi = document.getElementById("brown pup");
var pug = document.getElementById("black pup");

corgi.onclick = function() {
  console.log("Corgi has been clicked");
  corgi.style.border = "2px dashed brown";
  corgi.insertAdjacentHTML("beforebegin", "<p>Corgi thanks you for petting him</p>")
}

pug.onclick = function() {
  console.log("Pug has been clicked");
  pug.insertAdjacentHTML('afterend', '<img src="https://media.giphy.com/media/DTgZq3XBUwQgM/giphy.gif">')
}
