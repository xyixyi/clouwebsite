class AddTimeAndAuthorToCompanyNews < ActiveRecord::Migration
  def change
    add_column :company_news, :editTime, :datetime
    add_column :company_news, :editAuthor, :string
  end
end
