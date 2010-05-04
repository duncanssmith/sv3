 jQuery.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
 });

//$(document).ready(
$(function() {
  $(".pagination a").live("click", function() {
    $(".pagination").html( "loading..." );
    $.get( this.href, null, null, "script" );
    return false;
  });
})
//);


