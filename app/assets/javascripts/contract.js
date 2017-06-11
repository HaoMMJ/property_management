//var model_id=$(this).parent('.MiniSearchContainer').find('input[type=hidden]').val();
//var url = this.href + model_id + '?opener_id=#{gB.mini_search_opener_id(spec_id)}';
//var w = windowOpen(this,url,''); 
//return false;"
$(function () {
  $( "#add_contract_form" ).submit(function( event ) {
    event.preventDefault();

    var data = {};
    data.room_id = $("#search_room").attr("data");
    data.customer_id = $("#search_customer").attr("data");
    
    if(data.room_id && data.customer_id){
      $.post( "contract/create", data ).done(function(result){
        console.log(result);
        if(result.message == "success"){
          $('#addNewModal').modal('toggle');
          location.reload();
        }else{
          alert("Co gi day sai sai!");
        }
        
      });
    }
  });

  $(".updateContract").click(function(){
    var contract_id = $(this).attr('contract_id');
    $.get( "contract/" + contract_id ).done(function(result){
      console.log(result);
      var customer = result.customer;
      var room     = result.room;
      var layout   = result.room_layout;
      var building = result.building;
      var progress = result.progress;
      var progresses = result.progresses;

      $("#building_name").html(building.name);
      $("#building_type").html(building.building_type.name);
      $("#building_address").html(building.address);
      $("#built_on").html(building.built_on);
      $("#building_status").html(building.building_status);
      $("#building_floors").html(building.num_floors);

      $("#room_no").html(room.room_no);
      $("#room_status").html(room.room_status);
      $("#lighting_direction").html(room.lighting_direction.name);
      $("#layout").html(layout.number_of_bedrooms + " phòng ngủ, " + layout.number_of_wc + " phòng vệ sinh, " + layout.number_of_living_rooms + " phòng khách, " + layout.number_of_kitchens + " bếp, " + layout.number_of_dinning_rooms + " phòng ăn");
      $("#floor").html(room.floor);
      $("#space").html(room.space + '&#13217;');
      $("#price").html(room.price);

      $("#customer_name").html(customer.name);
      $("#customer_birthday").html(customer.birthday);
      $("#customer_id_card").html(customer.id_card);
      $("#customer_address").html(customer.address);
      $("#customer_tel").html(customer.tel);
      $("#customer_email").html(customer.email);
      $("#customer_occupation").html(customer.occupation);

      var progress_selection = $("#contract_progress");
      progress_selection.empty();
      var current_progress_id = progress.id;
      for(var i=0; i < progresses.length; i++){
        var selected = (progresses[i].id == current_progress_id) ? "selected" : "";
        var payment_period = progresses[i].payment_period.name;
        progress_selection.append('<option value="'+ progresses[i].id +'" '+selected+'>' + progresses[i].note + ' ' + payment_period +'</option>');
      }

      $("#contract_id").val(contract_id);
      $('#updateModal').modal('toggle');
    });
  });

  $('.save_update_contract').click(function(){
    var contract_id = $("#contract_id").val();
    var data = {};
    data.progress_id = $("#contract_progress").val();
    $.ajax({
      type: 'PUT',
      url:  "contract/" + contract_id,
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

  // $('.delete_customer').bind('ajax:success', function() {  
  //   $(this).closest('tr').fadeOut();
  // });  

  $("#search_room").click(function(){
    console.log($(this));
    var url = 'mini_search/room?opener_id=contract_search_room';
    windowOpen(this, url, '');
  }); 
  
  $("#search_customer").click(function(){
    console.log($(this));
    var url = 'mini_search/customer?opener_id=contract_search_customer'
    windowOpen(this, url, '');
  });
});


document["callback_for_contract_search_room"] = function(value) {
  var obj = jQuery.parseJSON(value);
  $("#new_building_name").html(obj.building_name);
  $("#new_room_no").html(obj.room_no);
  $("#new_room_floor").html(obj.room_floor);
  $("#new_room_space").html(obj.space + '&#13217;');
  $("#new_room_price").html(obj.price);
  $("#search_room").attr("data", obj.id)
}

document["callback_for_contract_search_customer"] = function(value) {
  console.log(value);
  var obj = jQuery.parseJSON(value);
  $("#new_customer_name").html(obj.name);
  $("#new_customer_birthday").html(obj.birthday);
  $("#new_customer_id_card").html(obj.id_card);
  $("#new_customer_address").html(obj.address);
  $("#search_customer").attr("data", obj.id)
}
