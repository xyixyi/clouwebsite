class CreateMajorProducts < ActiveRecord::Migration
  def change
    create_table :major_products do |t|
      t.integer :categoryId
      t.string :categoryName
      t.string :categoryImg
      t.string :categoryDescription

      t.timestamps null: false
    end
  end
end
