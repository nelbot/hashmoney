class CreateJoinTableCampaignsInfluencers < ActiveRecord::Migration
  def change
    create_join_table :campaigns, :influencers do |t|
      t.index [:campaign_id, :influencer_id]
      t.index [:influencer_id, :campaign_id]
    end
  end
end
