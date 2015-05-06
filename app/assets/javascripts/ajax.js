function addCampaign (event) {
  event.preventDefault();
  var Campaign = {
    industry: $('#brand_industries').val(),
    hashtag: $('.target-hashtag').val(),
    age_group: $('.target-age-group').val(), 
    demographic: $('.target-demographic').val(),
    location: $('.target-location').val()
  };

  console.log(Campaign)

  var request = $.post('/api/campaigns/create', Campaign);

  function onSaveSuccess (response) {
    console.debug('BOOM', response);
  }

  function onSaveFailure (err) {
    // Print out the error response
    console.error(err.responseJSON);
  }

  request.done(onSaveSuccess);
  request.fail(onSaveFailure);
}

$('.js-add-campaign').on('click', addCampaign);