class AddColumnToInfluencer < ActiveRecord::Migration
  def change
    add_column :influencers, :username, :string
    add_column :influencers, :industry, :string
    add_column :influencers, :age, :integer
    add_column :influencers, :location, :string
    add_column :influencers, :occupation, :string
  end
end
