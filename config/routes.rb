Rails.application.routes.draw do
  devise_for :brands, :controllers => { registrations: 'brands/registrations' }
  devise_for :influencers, :controllers => { registrations: 'registrations' }
  root "site#index"
  get '/brands/dashboard' => 'brands#dashboard'

end
