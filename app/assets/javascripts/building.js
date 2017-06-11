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

  $(".updatebuilding").click(function(){
    // console.log($(this));
    // console.log($(this).attr('building-id'))
  });

  $('.delete_building').bind('ajax:success', function() {  
    $(this).closest('tr').fadeOut();
  });  
});
