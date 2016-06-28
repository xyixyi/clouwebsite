class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.string :synopsis
      t.string :detail
      t.string :attachedFiles
      t.references :type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
