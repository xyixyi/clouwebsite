class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :productName
      t.string :synopsis
      t.string :detail
      t.string :attachedFiles
      # added by xy
      t.string :image
      t.string :productId

      t.timestamps null: false
    end
  end
end
