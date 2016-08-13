class AddSendAuthEmailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :send_auth_email, :boolean, :default => true
  end
end
