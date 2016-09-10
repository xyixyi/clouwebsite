class AddAuthorizedToSpecialNewsOne < ActiveRecord::Migration
  def change
    add_column :special_news_ones, :Authorized, :boolean, :default => false
  end
end
