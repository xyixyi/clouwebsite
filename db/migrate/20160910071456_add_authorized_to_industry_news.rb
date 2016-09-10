class AddAuthorizedToIndustryNews < ActiveRecord::Migration
  def change
    add_column :industry_news, :Authorized, :boolean
  end
end
