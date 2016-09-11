class AddAuthorizedToCompanyNews < ActiveRecord::Migration
  def change
    add_column :company_news, :Authorized, :boolean, :default => false
  end
end
