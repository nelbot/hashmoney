function openSignupModal (event) {
  console.debug(event.target);
  event.preventDefault();
  $('.js-signup-modal').modal();

}

$('.js-open-signup-modal').on('click', openSignupModal);


function openLoginModal (event) {
  console.debug(event.target);
  event.preventDefault();
  $('.js-login-modal').modal();

}

$('.js-open-login-modal').on('click', openLoginModal);


function openLoginBrandModal (event) {
  console.debug(event.target);
  event.preventDefault();
  $('.js-login-brand-modal').modal();

}

$('.js-open-login-brand-modal').on('click', openLoginBrandModal);


function openLoginInfluencerModal (event) {
  console.debug(event.target);
  event.preventDefault();
  $('.js-login-influencer-modal').modal();

}

$('.js-open-login-influencer-modal').on('click', openLoginInfluencerModal);


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