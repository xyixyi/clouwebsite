class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.datetime :date
      t.string :link

      t.timestamps null: false
    end
  end
end
