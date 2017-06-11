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