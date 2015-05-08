class CampaignsApisController < ApplicationController
  def create

    campaign = current_brand.campaigns.new campaign_params

    if campaign.save
      render json: campaign
    else
      render status: 400, json: { message: 'error. danger!!!' }
    end
  end

  def technology
    @name = params[:industry].capitalize
    @campaigns = Campaign.where(industry: @name).order(created_at: :desc)
  end

  def add_campaign_to_influencer
    @current_campaign = Campaign.find_by_id(params[:current_campaign_id])
    @current_campaign.influencers.push(current_influencer)
    
    redirect_to '/influencers/dashboard'
  end

  def destroy
    @current_campaign = Campaign.find_by_id(params[:current_campaign_id])
    @current_campaign.destroy

    redirect_to '/brands/dashboard'
  end

  private

  def campaign_params
    params.permit(:industry, :hashtag, :age_group, :demographic, :location)
  end
end
