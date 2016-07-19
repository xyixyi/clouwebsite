class RenameNewsDb < ActiveRecord::Migration
  def change
    rename_table :news, :company_news
  end
end
