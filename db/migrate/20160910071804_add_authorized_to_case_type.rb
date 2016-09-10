class AddAuthorizedToCaseType < ActiveRecord::Migration
  def change
    add_column :case_types, :Authorized, :boolean
  end
end
