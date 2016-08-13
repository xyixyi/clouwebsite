class AddFieldToUser < ActiveRecord::Migration
  def change
    add_column :users, :authorized, :string
  end
end
