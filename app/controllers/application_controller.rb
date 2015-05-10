class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def after_sign_in_path_for(resource)
    if resource.is_a?(Influencer)
      influencers_dashboard_path
    else
      brands_dashboard_path
   end
  end

  $client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "85eU1gTcEK57lztgCwtzVVpeQ"
  config.consumer_secret     = "yDxvZFXu6C3FhRbLmt7VePIdpknW8reqBIMLlTWiGkrQiPWz5s"
  config.access_token        = "75638195-cc8rJKyivp5JFoZvTPN3xJqPIxPa6xQ4TK2BjcmYN"
  config.access_token_secret = "myPYGhXbMxSJDShWuWp6LLylgGhcOicPVxKfLOL4hPnZO"
  end


end
