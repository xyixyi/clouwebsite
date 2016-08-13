class DropTableUnauthUser < ActiveRecord::Migration
  def change
    drop_table :unauth_users
  end
end
