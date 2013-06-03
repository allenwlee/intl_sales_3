$(document).ready(function() {
  $("#add-title").mousedown(function() {
    console.log($(this).next());
    $(this).parent().children().removeClass("hidden");
  });

  $("#add-sale").mousedown(function() {
    console.log($(this).next());
    $(this).parent().children().removeClass("hidden");
  });

});

