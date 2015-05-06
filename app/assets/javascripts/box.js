  $(document).ready(function(){
  
    $('.fa-plus').on('click',function(){
      $(this).closest(".panel").toggleClass('flip');
    });

  });