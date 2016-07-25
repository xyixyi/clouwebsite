class AddAuthorToIndustryNews < ActiveRecord::Migration
  def change
    add_column :industry_news, :author, :string
  end
end
