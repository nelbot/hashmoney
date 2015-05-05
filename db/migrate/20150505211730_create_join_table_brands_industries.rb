class CreateJoinTableBrandsIndustries < ActiveRecord::Migration
  def change
    create_join_table :brands, :industries do |t|
      # t.index [:brand_id, :industry_id]
      # t.index [:industry_id, :brand_id]
    end
  end
end
