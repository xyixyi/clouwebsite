class CreateIndustryNews < ActiveRecord::Migration
  def change
    create_table :industry_news do |t|
      t.string :title
      t.string :description
      t.string :content
      t.string :video_url
      t.datetime :time
      t.string :editor

      t.timestamps null: false
    end
  end
end
