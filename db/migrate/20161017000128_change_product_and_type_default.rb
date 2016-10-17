class ChangeProductAndTypeDefault < ActiveRecord::Migration
  def change
    change_column_default :types, :priority, 999
    change_column_default :products, :priority, 999
  end
end
