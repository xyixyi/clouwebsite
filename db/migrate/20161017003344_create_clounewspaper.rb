class CreateClounewspaper < ActiveRecord::Migration
  def change
    create_table :clounewspapers do |t|
      t.string :title
      t.string :attachment
      t.string :image
    end
  end
end
