Rails.application.routes.draw do
  devise_for :brands, :controllers => { registrations: 'brands/registrations' }
  devise_for :influencers, :controllers => { registrations: 'registrations' }
  root "site#index"
  get '/brands/dashboard' => 'brands#dashboard'
  get '/brands/create' => 'brands#create'

  get '/influencers/dashboard' => 'influencers#dashboard'
  get '/influencers/request' => 'influencers#request'
end
