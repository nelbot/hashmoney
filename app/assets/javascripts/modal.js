function openBrandModal (event) {
  console.debug(event.target);
  event.preventDefault();
  $('.js-modal').modal();

}

$('.js-open-modal').on('click', openBrandModal);


function openInfluencerModal (event) {
  console.debug(event.target);
  event.preventDefault();
  $('.js-modal-2').modal();

}

$('.js-open-modal-2').on('click', openInfluencerModal);