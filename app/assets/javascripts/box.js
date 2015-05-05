  $(document).ready(function(){
  
    $('.panel').on('mouseover',function(){
      $(this).toggleClass('flip');
    });

    $('.panel').on('mouseout',function(){
      $(this).toggleClass('flip');
    });


  });