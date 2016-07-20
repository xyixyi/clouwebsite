class AddTimeAndAuthorToIndustryNews < ActiveRecord::Migration
  def change
    add_column :industry_news, :editTime, :datetime
    add_column :industry_news, :editAuthor, :string
  end
end
