$(function () {
  $( "#add_customer_form" ).submit(function( event ) {
    var info = objectifyForm($("form#add_customer_form input[type=text]"))
    var data = {};
    data["customer"] = info
    $.post( "customer/create", data ).done(function(result){
      console.log(result);
      $("form#add_customer_form input[type=text]").val("");
      $('#addNewModal').modal('toggle');
      $('input[type="submit"], input[type="button"], button').disable(false);
      location.reload();
    });
    event.preventDefault();
  });

  $(".updateCustomer").click(function(){
    // console.log($(this));
    // console.log($(this).attr('customer-id'))
  });

  $('.delete_customer').bind('ajax:success', function() {  
    $(this).closest('tr').fadeOut();
  });  
});
