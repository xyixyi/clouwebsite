class AddAuthorizedToBid < ActiveRecord::Migration
  def change
    add_column :bids, :Authorized, :boolean
  end
end
