class AddAuthorizedToSpecialNewsTwo < ActiveRecord::Migration
  def change
    add_column :special_news_twos, :Authorized, :boolean, :default => false
  end
end