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
      $("#update_building_id").val(room.building_id);
      $("#update_room_no").val(room.room_no);
      $("#update_room_status").val(room.room_status);
      $("#update_lighting_direction_id").val(room.lighting_direction_id);
      $("#update_layout_id").val(room.layout_id);
      $("#update_floor").val(room.floor);
      $("#update_space").val(room.space);
      $("#update_available_on").val(room.available_on);
      $("#update_opened_at").val(room.opened_at);
      $("#update_price").val(room.price);

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
