class CampaignsApisController < ApplicationController
  def create
    p "------------------>~~~~~~~~~"
    p params
    p campaign_params
    campaign = Campaign.new campaign_params

    if campaign.save
      render json: campaign
    else
      render status: 400, json: { message: 'error. danger!!!' }
    end
  end

  private

  def campaign_params
    params.permit(:industry, :hashtag, :age_group, :demographic, :location)
  end
end
