// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require react
//= require react_ujs
//= require components
//= require_tree .



$(document).on ("click", ".list", function(){
 var d = this
 var p = $(this).val();
 var name = $(this).attr("attribute");
 alert("this = "+d+ " this.val = "+p);
 if (name == "show"){
 	document.getElementById('data-operation').innerHTML = "Hide Product List"
  $('#data-operation').attr('attribute','close');
  alert(" I have show "+name);
  alert("set attribute = "+$('#data-operation').attr('attribute'));
 }
 else{
 	document.getElementById('data-operation').innerHTML = "Show Product List"
  $("#data-operation").attr("attribute","show");
  alert(" I have close "+name);
  alert("set attribute = "+$('#data-operation').attr('attribute'));
 }
 $('.product-list').toggle();
 return false;
	 		
  //alert("d_his = "+d+" $val = "+p+" name "+name);
 // //document.getElementById("data-operation").value="Close list";
 // document.getElementById('data-operation').innerHTML = "Close"
 // $("#data-operation").attr("attribute","close");
 // alert($('#data-operation').attr('attribute'));
 // $(".product-list").hide();
});


$(document).ready(function(){
  $('#function-table th').css("background-color","orange");
  
  $(document).on ('click', '#all-header', function(){
   $('#function-table th').css("background-color","green");
  });

  $(document).on ('click', '#all-even', function(){
    $('#function-table th:nth-child(even)').css("background-color","yellow");
  });

  $(document).on ('click', '#all-odd', function(){
    $('#function-table th:nth-child(odd)').css("background-color","grey");
  });

  // $(document).on ('click', '#', function(){

  // });

  // $(document).on ('click', '#', function(){

  // });

  // $(document).on ('click', '#', function(){

  // });




  $('a.hide-para').mouseover(function(){
   $("p.para-data").css("color", "red");
  return false;
  });
  $('a.hide-para').mouseout(function(){
   $("p.para-data").css("color", "black");
  });
$(document).on ('click', '.hide-para', function(){
 alert("I am toggling");
 $('.para-data').toggle();
 return false;
});
//fade effecs
  

});

$(document).on ("click",".btn1", function(){
    $("p").fadeOut(1500);
    });
  $(document).on ("click",".btn2", function(){
    $("p").fadeIn(1500);
  });
    $(document).on ("click",".btn5",function(){
    $("p").fadeToggle(1500)
    });


//fading effects

$(document).on ("click","#fade-effects", function(){
alert("cliicked fade effect");
$("#div1").fadeToggle();
$("#div2").fadeToggle("slow");
$("#div3").fadeToggle(6000);
});

//sliding effects
$(document).on ("click","#slide-effects", function(){
alert("clicked slide effect");
$("#div1").slideUp(6000);
$("#div1").slideDown(6000);
$("#div3").slideToggle(6000);
});

// animation effects

$(document).on ("click","#animation-effects", function(){
  $("#div1").animate({
  opacity:'0.5',
  height:'150px',
  width:'150px',
  backgroundColor: 'red'
  });
  var div = "$('#div4')";
  alert("div = "+ div);
  div.animate({height:'300px',opacity:'0.4'},"slow");
div.animate({width:'300px',opacity:'0.8'},"slow");
div.animate({height:'100px',opacity:'0.4'},"slow");
div.animate({width:'100px',opacity:'0.8'},"slow");
});




// adding and removing classes

$(document).on ("click","#add-class", function(){
alert("clicked to add classes");
$("#div1, #div3").addClass('changed-class');

});

$(document).on ("click","#remove-class", function(){
alert("clicked to remove classes");
var bg_color = $('#div1').css('background-color');
alert("Background color = "+bg_color);
$("#div1, #div3").removeClass('changed-class');
});

$(document).on ("click","#ajax", function(){
alert("Called to load data by ajax");
$("#div1").load("test_ajax.txt",function(responseTxt,statusTxt,xhr){
if(statusTxt=="success")
alert("External content loaded successfully!");
if(statusTxt=="error")
alert("Error: "+xhr.status+": "+xhr.statusText);
});
});




// table manipulation

