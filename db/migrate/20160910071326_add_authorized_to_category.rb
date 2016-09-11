class AddAuthorizedToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :Authorized, :boolean, :default => false
  end
end
