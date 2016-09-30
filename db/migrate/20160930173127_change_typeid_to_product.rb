class ChangeTypeidToProduct < ActiveRecord::Migration
  def change
    rename_column :products, :Type_id, :type_id
  end
end
