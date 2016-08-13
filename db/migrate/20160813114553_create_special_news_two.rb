class CreateSpecialNewsTwo < ActiveRecord::Migration
  def change
    create_table :special_news_twos do |t|
      t.string   "title"
      t.string   "description"
      t.string   "content"
      t.string   "video_url"
      t.datetime "time"
      t.string   "editor"
      t.datetime "created_at",  null: false
      t.datetime "updated_at",  null: false
      t.string   "image"
      t.string   "editAuthor"
      t.string   "author"
      t.timestamps null: false
    end
  end
end
