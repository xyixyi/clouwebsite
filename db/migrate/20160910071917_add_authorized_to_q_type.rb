class AddAuthorizedToQType < ActiveRecord::Migration
  def change
    add_column :q_types, :Authorized, :boolean
  end
end
