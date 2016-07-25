class AddTitileToYearReport < ActiveRecord::Migration
  def change
    add_column :year_reports, :title, :string
  end
end
