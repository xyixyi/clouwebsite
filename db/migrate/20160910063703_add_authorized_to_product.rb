class AddAuthorizedToProduct < ActiveRecord::Migration
  def change
    add_column :products, :Authorized, :boolean
  end
end
