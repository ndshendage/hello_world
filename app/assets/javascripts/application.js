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
//= require_tree .



$(document).on ("click", ".list", function(){
 var d = this
 var p = $(this).val();
 var name = $(this).attr("attribute");

 if (name == "show"){
 	document.getElementById('data-operation').innerHTML = "Hide Product List"
  $('#data-operation').attr('attribute','close');
 }
 else{
 	document.getElementById('data-operation').innerHTML = "Show Product List"
  $("#data-operation").attr("attribute","show");
 }


	 		
  //alert("d_his = "+d+" $val = "+p+" name "+name);
 // //document.getElementById("data-operation").value="Close list";
 // document.getElementById('data-operation').innerHTML = "Close"
 // $("#data-operation").attr("attribute","close");
 // alert($('#data-operation').attr('attribute'));
 $(".product-list").toggle();
});