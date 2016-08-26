class ChangeUsers < ActiveRecord::Migration
  def change
    change_column :users, :send_auth_email, :boolean, :default => false
  end
end
