class AddPriorityToProducts < ActiveRecord::Migration
  def change
    add_column :products, :priority, :integer, :default => 0, :limit => 999
  end
end
