class Industry < ActiveRecord::Base
  belongs_to :brands
  belongs_to :influencers
end
