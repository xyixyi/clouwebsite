class AddAuthorizedToType < ActiveRecord::Migration
  def change
    add_column :types, :Authorized, :boolean
  end
end
