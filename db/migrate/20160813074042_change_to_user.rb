class ChangeToUser < ActiveRecord::Migration
  def change
    change_column :users, :authorized, :boolean, :default => false
  end
end
