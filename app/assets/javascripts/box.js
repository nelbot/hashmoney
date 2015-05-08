  $(document).ready(function(){
  
    $('.fa-plus').on('click',function(){
      $(this).closest(".panel").toggleClass('flip');
    });

    $('.fa-eye').on('click',function(){
      $(this).closest(".panel").toggleClass('flip');
    });

    $('.back').on('click',function(){
      $(this).closest(".panel").toggleClass('flip');
    });


  });