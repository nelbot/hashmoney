Rails.application.routes.draw do
  devise_for :brands, :controllers => { registrations: 'brands/registrations' }
  devise_for :influencers, :controllers => { registrations: 'registrations' }

  # resources :campaigns

  root "site#index"
  get '/brands/dashboard' => 'brands#dashboard'
  get '/brands/create' => 'brands#create'

  get '/influencers/dashboard' => 'influencers#dashboard'
  get '/influencers/request' => 'influencers#request'

  post 'api/campaigns/create' => 'campaigns_apis#create'

  get '/influencers/campaigns/:industry' => 'campaigns_apis#technology'

  get '/campaigns' => 'hello#hello'

  get '/campaigns/:current_campaign_id' => 'campaigns_apis#add_campaign_to_influencer'

  get '/brands/campaigns/in_progress' => 'brands#campaigns_in_progress'

  delete '/brands/campaigns/:current_campaign_id/delete' => 'campaigns_apis#destroy', as: :brands_campaigns_delete

  get 'brands/campaigns/completed/:current_campaign_id' => 'brands#tweets_complete', as: :brands_tweets_complete
  
  get '/brands/campaigns/completed' => 'brands#completed_campaigns'
end
