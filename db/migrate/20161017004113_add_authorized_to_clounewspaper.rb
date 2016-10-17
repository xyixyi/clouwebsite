class AddAuthorizedToClounewspaper < ActiveRecord::Migration
  def change
    add_column :clounewspapers, :Authorized, :boolean, :default => false
  end
end
