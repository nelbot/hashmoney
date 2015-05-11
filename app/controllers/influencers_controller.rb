class InfluencersController < ApplicationController

  def dashboard 
    @your_campaigns = current_influencer.campaigns.all.order(created_at: :desc)
  end

  def create
  end
end
