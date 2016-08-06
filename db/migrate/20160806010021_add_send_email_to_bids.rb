class AddSendEmailToBids < ActiveRecord::Migration
  def change
    add_column :bids, :send_email, :boolean, :default => false
  end
end
