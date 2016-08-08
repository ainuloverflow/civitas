$(document).ready(function(){
  $('#login-form').on('submit',function(e) {  //Don't foget to change the id form
  $.ajax({
      url:'http://localhost/hotspot/home/login', //===PHP file name====
      data:$(this).serialize(),
      type:'POST',
      error:function(data){
        //Error Message == 'Title', 'Message body', Last one leave as it is
	    swal("Oops...", "Something went wrong :(", "error");
      }
    });
    e.preventDefault(); //This is to Avoid Page Refresh and Fire the Event "Click"
  });
});

