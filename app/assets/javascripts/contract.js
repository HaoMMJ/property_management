//var model_id=$(this).parent('.MiniSearchContainer').find('input[type=hidden]').val();
//var url = this.href + model_id + '?opener_id=#{gB.mini_search_opener_id(spec_id)}';
//var w = windowOpen(this,url,''); 
//return false;"
$(function () {
  // $( "#add_customer_form" ).submit(function( event ) {
  //   var info = objectifyForm($("form#add_customer_form input[type=text]"))
  //   var data = {};
  //   data["customer"] = info
  //   $.post( "customer/create", data ).done(function(result){
  //     console.log(result);
  //     $("form#add_customer_form input[type=text]").val("");
  //     $('#addNewModal').modal('toggle');
  //     $('input[type="submit"], input[type="button"], button').disable(false);
  //     location.reload();
  //   });
  //   event.preventDefault();
  // });

  // $(".updateCustomer").click(function(){
  //   // console.log($(this));
  //   // console.log($(this).attr('customer-id'))
  // });

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