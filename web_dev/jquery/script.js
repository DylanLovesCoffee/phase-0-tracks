$(document).ready(function(){

  $("button").click(function(){
    $("#ball").animate({left:"250px"});
    $("#ball").hide("slow", "linear", function(){
      $("#ball").animate({left:"150px"})
    });
  })
  $("#box_1").click(function(){
    alert("Nope! Try again.");
  })
  $("#box_2").click(function(){
    $("#ball").show();
    alert("You got it! Congrats!");
  })
  $("#box_3").click(function(){
    alert("Nope! Try again.");
  })
});
