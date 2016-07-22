class CreateYearReports < ActiveRecord::Migration
  def change
    create_table :year_reports do |t|
      t.datetime :date
      t.string :attachment

      t.timestamps null: false
    end
  end
end
