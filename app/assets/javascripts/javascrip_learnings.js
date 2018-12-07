$(document).ready (function(){
  $(document).on ("change","#javascript_learning_minimum" , function(){
  var e = $(this)
  var f = this
  var d = document.getElementById('javascript_learning_minimum').value;
  alert ("$(this) = "+e+", this= "+f+", javascript_learning_minimum = "+d);
  $("#javascript_learning_maximum").val(1+parseInt(d));
 }); 


 // ordering and name changing of button

 // $(document).on ("click", "#order", function(){
 //   alert("You have clickedfhfghfg");
 //   var current_order = $(this).attr("order");
 //   alert("djgfkl"+current_order);
   
 //   if(current_order == "desc" ){
 //    //document.getElementById('order').innerHTML = "Order Ascending"
 //    document.getElementById('order').innerHTML = "Hide Product List"
 //    $("#order").attr("order","asc");
 //    }
 //    else{
 //      document.getElementById('order').innerHTML = "Order Descending"
 //    $("#order").attr("order","desc");
 //  }
 // });




// learning window.location

$(document).on ("click", ".homy", function(){
  alert("You have clicked");
  alert(""+this);
  var s = $(this).val();
  alert(s);
  var p = String(this).split("/").pop();
  alert(p);

  //var page = get_this.split("/");
  //alert("this = "+get_this);
  var loc = window.location.href
  alert("Location = "+loc);

  window.location.href = "http://localhost:3001/customers"
  alert("redirecting to the customers");

});

$(document).on ('click', '.add-more', function(){
  alert("You are appending the div");
  $('#functions').append(document.getElementById("all-header11"));
});



});
