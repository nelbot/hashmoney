class BrandsController < ApplicationController
before_action :authenticate_brand!  

  def dashboard
    @campaign = Campaign.new
    @brands_campaigns = current_brand.campaigns.all.order(created_at: :desc)

  end

  def campaigns_in_progress
    @your_campaigns = current_brand.campaigns
  end

  def create
    
  end

  def tweets_complete


    @current_campaign = Campaign.find_by_id(params[:current_campaign_id])
    @campaign_influencers = @current_campaign.influencers

    @tweets = []
    @campaign_influencers.each do |influencer|
    $client.search("from:#{influencer.username} ##{@current_campaign.hashtag}").take(100).collect do |tweet|
      @tweets.push(tweet.user.screen_name + " " + tweet.text)
    end
   end
  end
end
