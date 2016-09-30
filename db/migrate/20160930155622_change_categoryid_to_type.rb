class ChangeCategoryidToType < ActiveRecord::Migration
  def change
    rename_column :types, :Category_id, :category_id
  end
end
