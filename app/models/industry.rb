class Industry < ActiveRecord::Base
  has_and_belongs_to_many :brands
  belongs_to :influencers
  belongs_to :campaigns
end
