class CreatePopProducts < ActiveRecord::Migration
  def change
    create_table :pop_products do |t|
      t.string :name
      t.string :synopsis
      t.string :detail
      t.references :type, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
