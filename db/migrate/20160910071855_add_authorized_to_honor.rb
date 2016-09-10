class AddAuthorizedToHonor < ActiveRecord::Migration
  def change
    add_column :honors, :Authorized, :boolean
  end
end
