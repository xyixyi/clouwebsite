class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :categoryName
      t.string :categoryImg
      t.string :categoryDescription

      t.timestamps null: false
    end
  end
end
