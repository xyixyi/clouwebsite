class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name,           :null => false
      t.string :description
      t.references :Category
      t.timestamps null: false
    end
  end
end
