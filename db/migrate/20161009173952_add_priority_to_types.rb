class AddPriorityToTypes < ActiveRecord::Migration
  def change
    add_column :types, :priority, :integer, :default => 0, :limit => 999
  end
end
