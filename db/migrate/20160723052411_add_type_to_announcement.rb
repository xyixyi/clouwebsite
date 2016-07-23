class AddTypeToAnnouncement < ActiveRecord::Migration
  def change
    add_column :announcements, :type, :string
  end
end
