class AddColumnToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :industry, :string
    add_column :campaigns, :hashtag, :string
    add_column :campaigns, :age_group, :integer
    add_column :campaigns, :demographic, :string
    add_column :campaigns, :location, :string
    add_column :campaigns, :expiration_date, :datetime
  end
end
