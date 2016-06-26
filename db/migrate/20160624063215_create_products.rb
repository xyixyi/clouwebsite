class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :productName
      t.string :synopsis
      t.string :detail
      t.string :attachedFiles

      t.timestamps null: false
    end
  end
end
