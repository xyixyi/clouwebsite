class CreateEmployeeStories < ActiveRecord::Migration
  def change
    create_table :employee_stories do |t|
      t.string :name
      t.datetime :date
      t.string :image
      t.string :text

      t.timestamps null: false
    end
  end
end
