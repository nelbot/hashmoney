function openModal (event) {
  console.debug(event.target);
  event.preventDefault();
  $('.js-modal').modal();

}

$('.js-open-modal').on('click', openModal);