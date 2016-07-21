class RemoveEditTimeFromIndustryNews < ActiveRecord::Migration
  def change
    remove_column :industry_news, :editTime
  end
end
