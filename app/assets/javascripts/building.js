$(function () {
  $( "#add_building_form" ).submit(function( event ) {
    var info = objectifyForm($("form#add_building_form input[type=text], form#add_building_form select"))
    var data = {};
    data["building"] = info
    $.post( "building/create", data ).done(function(result){
      console.log(result);
      $("form#add_building_form input[type=text]").val("");
      $('#addNewModal').modal('toggle');
      $('input[type="submit"], input[type="button"], button').disable(false);
      location.reload();
    });
    event.preventDefault();
  });

  $(".updateBuidling").click(function(){
    var building_id = $(this).attr('building-id');
    $.get( "building/" + building_id ).done(function(result){
      console.log(result);
      var building = result.building;
      $("#update_name").val(building.name);
      $("#update_building_type_id").val(building.building_type_id);
      $("#update_address").val(building.address);
      $("#update_built_on").val(building.built_on);
      $("#update_building_status").val(building.building_status);
      $("#update_num_floors").val(building.num_floors);
      $("#update_payment_plan_id").val(building.payment_plan_id);

      $("#building_id").val(building_id);
      $('#updateModal').modal('toggle');
    });
  });

  $('.save_update_building').click(function(){
    var building_id = $("#building_id").val();
    var info = objectifyForm($("#updateModal input[type=text], #updateModal select"))
    var data = {};
    data["building"] = info
    $.ajax({
      type: 'PUT',
      url:  "building/" + building_id,
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

  $('.delete_building').bind('ajax:success', function() {  
    $(this).closest('tr').fadeOut();
  });  
});
