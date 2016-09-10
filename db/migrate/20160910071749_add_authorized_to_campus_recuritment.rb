class AddAuthorizedToCampusRecuritment < ActiveRecord::Migration
  def change
    add_column :campus_recuritments, :Authorized, :boolean
  end
end
