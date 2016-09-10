class AddAuthorizedToProduct < ActiveRecord::Migration
  def change
    add_column :products, :Authorized, :boolean, :default => false
  end
end
