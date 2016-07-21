class CreateSocietyRecuritments < ActiveRecord::Migration
  def change
    create_table :society_recuritments do |t|
      t.string :title
      t.string :position
      t.string :department
      t.datetime :deadline
      t.string :description

      t.timestamps null: false
    end
  end
end
