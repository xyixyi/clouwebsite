class RemoveShortDescriptionToNews < ActiveRecord::Migration
  def change
    remove_column :news, :shortDescription, :string
  end
end
