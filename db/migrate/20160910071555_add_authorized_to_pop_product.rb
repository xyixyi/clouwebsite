class AddAuthorizedToPopProduct < ActiveRecord::Migration
  def change
    add_column :pop_products, :Authorized, :boolean
  end
end
