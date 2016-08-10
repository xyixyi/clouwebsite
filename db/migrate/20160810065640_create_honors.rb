class CreateHonors < ActiveRecord::Migration
  def change
    create_table :honors do |t|
      t.string :title
      t.string :text

      t.timestamps null: false
    end
  end
end
