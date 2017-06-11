$(function () {
  $( "#add_room_form" ).submit(function( event ) {
    var info = objectifyForm($("form#add_room_form input[type=text], form#add_room_form select"))
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

  $(".updateRoom").click(function(){
    var room_id = $(this).attr('room-id');
    $.get( "room/" + room_id ).done(function(result){
      console.log(result);
      var room = result.room;
      $("#update_name").val(room.name);
      $("#update_room_type_id").val(room.room_type_id);
      $("#update_address").val(room.address);
      $("#update_built_on").val(room.built_on);
      $("#update_room_status").val(room.room_status);
      $("#update_num_floors").val(room.num_floors);
      $("#update_payment_plan_id").val(room.payment_plan_id);

      $("#room_id").val(room_id);
      $('#updateModal').modal('toggle');
    });
  });

  $('.save_update_room').click(function(){
    var room_id = $("#room_id").val();
    var info = objectifyForm($("#updateModal input[type=text], #updateModal select"))
    var data = {};
    data["room"] = info
    $.ajax({
      type: 'PUT',
      url:  "room/" + room_id,
      data: data,
      dataType: "JSON",
      success: function(result) {
        if(result.message == "success"){
          $('#updateModal').modal('toggle');
          location.reload();
        }else{
          alert("Co gi day sai sai!");
        }
      }
    });
  });

  $('.delete_room').bind('ajax:success', function() {  
    $(this).closest('tr').fadeOut();
  });  
});
