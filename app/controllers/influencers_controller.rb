class InfluencersController < ApplicationController

  def dashboard 
    @your_campaigns = current_influencer.campaigns
  end

  def create
  end
end
