class CreateCampusRecuritments < ActiveRecord::Migration
  def change
    create_table :campus_recuritments do |t|
      t.string :title
      t.string :position
      t.string :department
      t.datetime :deadline
      t.string :description

      t.timestamps null: false
    end
  end
end
