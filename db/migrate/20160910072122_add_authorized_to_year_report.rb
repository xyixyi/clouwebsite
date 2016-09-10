class AddAuthorizedToYearReport < ActiveRecord::Migration
  def change
    add_column :year_reports, :Authorized, :boolean
  end
end
