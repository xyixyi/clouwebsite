class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :typeName
      t.string :typeDescription

      t.timestamps null: false
    end
  end
end
