class AddAuthorToCompanyNews < ActiveRecord::Migration
  def change
    add_column :company_news, :author, :string
  end
end
