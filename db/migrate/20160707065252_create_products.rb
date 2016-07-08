class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name,        :null => false
      t.string :synopsis
      t.string :detail
      t.references :Type

      t.timestamps null: false
    end
  end
end
