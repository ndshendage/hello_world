$(document).ready(function(){

$(document).on ("click",".rotate", function(){
  alert("will start to rotate");
  var id = "rotate-image";
  var dir =  "acw";
  alert("id and dir = "+id+""+dir);
  var degree;
  alert("I am calling that function");
  myIntroduction();
  alert("I have executed function");
  // if(dir == "acw"){
  //  degree = 0;
  //  while (degree < 360){
  //  	degree = degree + 1;
  //  	$('#'+id).rotate(degree);
  //  	if(degree == 360){
  //  		degree = 0;
  //  	}
  //  }
  // }
  // else{
  // 	degree = 360;
  // }




});

function myIntroduction(){
 alert("My name is Navnath");
}

});