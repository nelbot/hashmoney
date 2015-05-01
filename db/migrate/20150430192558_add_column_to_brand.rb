class AddColumnToBrand < ActiveRecord::Migration
  def change
    add_column :brands, :username, :string
    add_column :brands, :target_industry, :string
    add_column :brands, :target_hashtag, :string
    add_column :brands, :target_age_group, :integer
    add_column :brands, :target_demographic, :string
    add_column :brands, :target_location, :string
  end
end
