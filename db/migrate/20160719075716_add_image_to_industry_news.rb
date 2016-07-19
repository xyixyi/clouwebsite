class AddImageToIndustryNews < ActiveRecord::Migration
  def change
    add_column :industry_news, :image, :string
  end
end
