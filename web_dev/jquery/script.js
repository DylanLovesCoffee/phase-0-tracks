$(document).ready(function(){

  $("button").click(function(){
    $("#ball").animate({left:"250px"});
    $("#ball").hide("slow", "linear", function(){
      $(".boxes").animate({left:"150px"});
    });
  })

});
