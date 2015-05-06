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

    fetchCampaign(response)
  }

  function onSaveFailure (err) {
    // Print out the error response
    console.error(err.responseJSON);
  }

  request.done(onSaveSuccess);
  request.fail(onSaveFailure);
}

$('.js-add-campaign').on('click', addCampaign);

function fetchCampaign (campaign) {
    
    $('.js-form-card').after(buildCardHtml(campaign));

}


function buildCardHtml (campaign) {
  return '\
    <div class="col-lg-4">\
      <div class="wrapper">\
         <div class="hover panel">\
            <div class="front">\
              <div class="box1 panel-body">\
                <h1>#' + campaign.hashtag + '</h1>\
                <i class="fa fa-eye fa-fw add-icon"></i>\
                <h4>View Campaign</h4>\
              </div>\
            </div>\
            <div class="back">\
              <div class="box2 panel-body">\
                <h5>Campaign Details</h5>\
                <ul>\
                  <p>Hashtags: </p>\
                </ul>\
              </div>\
            </div>\
          </div>\
      </div>\
  </div>'
}

