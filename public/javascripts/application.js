// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
//


$j(document).ready(function(){
   $j("a").click(function(event){
//     alert("Thanks for visiting!");
//		 event.preventDefault();
     $(this).show("slow");
   });
  $j("a").addClass("test");
  $j("a").removeClass("test");
 });

function mark_for_destroy(element){
	$(element).next('.should_destroy').value = 1;
	$(element).up('.version').hide();
}
