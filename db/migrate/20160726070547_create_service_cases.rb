class CreateServiceCases < ActiveRecord::Migration
  def change
    create_table :service_cases do |t|
      t.references :case_type, index: true, foreign_key: true
      t.string :image
      t.string :text
      t.string :attachment

      t.timestamps null: false
    end
  end
end
