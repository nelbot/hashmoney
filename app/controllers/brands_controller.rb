class BrandsController < ApplicationController
before_action :authenticate_brand!  

  def dashboard
    @campaign = Campaign.new
    @brands_campaigns = current_brand.campaigns.all.order(created_at: :desc)

  end

  def create
    
  end
end
