class AddAuthorizedToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :Authorized, :boolean
  end
end
