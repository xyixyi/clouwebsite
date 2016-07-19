class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :description
      t.string :content
      t.string :video_url
      
      t.string :image #封面图（必要），与text editor里面添加的图片（at most 4张）不矛盾 

      t.timestamps null: false
    end
  end
end
