class AddAuthorizedToCompanyNews < ActiveRecord::Migration
  def change
    add_column :company_news, :Authorized, :boolean
  end
end
