class CreateComplains < ActiveRecord::Migration
  def change
    create_table :complains do |t|
      t.string :name
      t.string :email
      t.string :phonenumber
      t.boolean :solved, :default => false
      t.string :text
      t.timestamps null: false
    end
  end
end
