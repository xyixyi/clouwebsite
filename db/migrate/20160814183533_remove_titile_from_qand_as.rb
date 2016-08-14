class RemoveTitileFromQandAs < ActiveRecord::Migration
  def change
    remove_column :qand_as, :title
  end
end
