class RemoveEditAuthorFromSpecialNewsOne < ActiveRecord::Migration
  def change
    remove_column :special_news_ones, :editAuthor
  end
end
