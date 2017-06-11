$(function () {
  $( "#add_room_form" ).submit(function( event ) {
    var info = objectifyForm($("form#add_room_form input[type=text]"))
    var data = {};
    data["room"] = info
    $.post( "room/create", data ).done(function(result){
      console.log(result);
      $("form#add_room_form input[type=text]").val("");
      $('#addNewModal').modal('toggle');
      $('input[type="submit"], input[type="button"], button').disable(false);
      location.reload();
    });
    event.preventDefault();
  });

  $(".updateroom").click(function(){
    // console.log($(this));
    // console.log($(this).attr('room-id'))
  });

  $('.delete_room').bind('ajax:success', function() {  
    $(this).closest('tr').fadeOut();
  });  
});
