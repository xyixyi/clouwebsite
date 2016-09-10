class AddAuthorizedToServiceCase < ActiveRecord::Migration
  def change
    add_column :service_cases, :Authorized, :boolean
  end
end
