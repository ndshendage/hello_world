$(document).ready(function(){
 //alert("I am ready and u can go forward");
 $(document).on("click", ".panel-button", function(){
  //alert("You have clicked");
  var id = $(this).attr('data-panel');
  alert(id);
  $('#'+id).toggle(3000);
  // $('#panel-1').hide(3000).show(3000);
  // $('#panel-2 .panel-name').html("Bharat").css("color","red");
 

 });




 // working with tabs ...

 $(document).on("click",".tabs", function(){
  var id_clicked = $(this).attr('data-panel');
  $('.nav-tabs li.active').removeClass("active");
  var id_clicked_id = $(this).attr('id');
  $('#'+id_clicked_id).addClass('active');
  $('.tab-collection .tab.active').removeClass("active");
  $('#'+id_clicked).addClass('active');
  return false;
 });


});