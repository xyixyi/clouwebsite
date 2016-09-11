class AddAuthorizedToBid < ActiveRecord::Migration
  def change
    add_column :bids, :Authorized, :boolean, :default => false
  end
end
