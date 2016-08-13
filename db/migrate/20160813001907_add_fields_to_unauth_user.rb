class AddFieldsToUnauthUser < ActiveRecord::Migration
  def change
    add_column :unauth_users, :phoneNumber, :string
    add_column :unauth_users, :company, :string
    add_column :unauth_users, :department, :string
    add_column :unauth_users, :realName, :string
  end
end
