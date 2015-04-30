Rails.application.routes.draw do
  devise_for :brands
  devise_for :influencers
  root "site#index"
end
