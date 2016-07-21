class RemoveEditTimeFromCompanyNews < ActiveRecord::Migration
  def change
    remove_column :company_news, :editTime
  end
end
