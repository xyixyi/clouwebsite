class RemoveEditAuthorFromSpecialNewsTwo < ActiveRecord::Migration
  def change
    remove_column :special_news_twos, :editAuthor
  end
end
