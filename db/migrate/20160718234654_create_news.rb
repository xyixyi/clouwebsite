class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :shortDescription
      t.string :description
      t.string :content
      t.string :video_url

      t.timestamps null: false
    end
  end
end
