Rails.application.routes.draw do
  devise_for :influencers
  devise_for :brands
  root "site#index"
end
