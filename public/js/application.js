$(document).ready(function() {
  console.log($(this).next());
  $("#add-title").mousedown(function() {
    
    $(this).parent().children().removeClass("hidden");
  });

  $("#add-sale").mousedown(function() {
    console.log($(this).next());
    $(this).parent().children().removeClass("hidden");
  });

});

