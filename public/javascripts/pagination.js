 jQuery.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
 });

//$(document).ready(
$(function() {
	alert("1 hello!");
  $(".pagination a").live("click", function() {
    $(".pagination").html( "Page is loading..." );
    $.get( this.href, null, null, "script" );
	  alert("2 hello goodbye!");
    return false;
  });
})
//);


