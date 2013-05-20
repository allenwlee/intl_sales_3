$(document).ready(function() {
  $("#add-title").keyup(function() {
    console.log($(this).next());
    $(this).parent().children().removeClass("hidden");
  
  });
});
