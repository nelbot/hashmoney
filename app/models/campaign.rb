class Campaign < ActiveRecord::Base
  has_many :industries
  has_and_belongs_to_many :influencers
  has_many :brands
end
