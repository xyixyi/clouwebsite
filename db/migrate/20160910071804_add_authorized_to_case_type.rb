class AddAuthorizedToCaseType < ActiveRecord::Migration
  def change
    add_column :case_types, :Authorized, :boolean, :default => false
  end
end
