class AddTitleToServiceCases < ActiveRecord::Migration
  def change
    add_column :service_cases, :title, :string
  end
end
