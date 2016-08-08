class AddSeOthingToProduct < ActiveRecord::Migration
  def change
    add_column :products, :seo_title, :string
    add_column :products, :seo_word, :string
  end
end
