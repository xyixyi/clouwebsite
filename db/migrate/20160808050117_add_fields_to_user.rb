class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :phoneNumber, :string
    add_column :users, :company, :string
    add_column :users, :department, :string
    add_column :users, :realName, :string
  end
end
