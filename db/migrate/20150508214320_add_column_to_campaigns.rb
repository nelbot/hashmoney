class AddColumnToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :completed, :boolean
  end
end
