class AddBrandIdToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :brand_id, :integer
  end
end
