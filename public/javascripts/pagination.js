var $j = jQuery.noConflict();
$j(document).ready(function() {

//Enter jQuery code here
//$(document).ready(
$j(function() {
  $j(".pagination a").live("click", function() {
    $j(".pagination").html( "loading..." );
    $j.get( this.href, null, null, "script" );
    return false;
  });
})
//);

 //$.ajaxSetup({ 
  //'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
 //});



});
