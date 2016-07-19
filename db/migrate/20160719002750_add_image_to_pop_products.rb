class AddImageToPopProducts < ActiveRecord::Migration
  def change
    add_column :pop_products, :image, :string
  end
end
