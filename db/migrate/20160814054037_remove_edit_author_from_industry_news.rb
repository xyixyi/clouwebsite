class RemoveEditAuthorFromIndustryNews < ActiveRecord::Migration
  def change
    remove_column :industry_news, :editAuthor
  end
end
