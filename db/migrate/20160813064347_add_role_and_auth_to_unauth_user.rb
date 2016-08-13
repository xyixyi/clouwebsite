class AddRoleAndAuthToUnauthUser < ActiveRecord::Migration
  def change
    add_column :unauth_users, :authority, :string
    add_column :unauth_users, :role, :string
  end
end
