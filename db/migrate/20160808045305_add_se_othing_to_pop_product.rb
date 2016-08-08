class AddSeOthingToPopProduct < ActiveRecord::Migration
  def change
    add_column :pop_products, :seo_title, :string
    add_column :pop_products, :seo_word, :string
  end
end
