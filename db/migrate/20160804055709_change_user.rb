class ChangeUser < ActiveRecord::Migration
  def change
    remove_column :users, :admin
    add_column :users, :authority, :string
    change_column :users, :role, :string, :default => "user"
  end
end
