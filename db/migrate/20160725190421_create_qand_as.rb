class CreateQandAs < ActiveRecord::Migration
  def change
    create_table :qand_as do |t|
      t.string :title
      t.references :QType
      t.string :question
      t.string :answer
      t.string :attachment

      t.timestamps null: false
    end
  end
end
