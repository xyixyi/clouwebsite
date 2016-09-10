class AddAuthorizedToAnnouncement < ActiveRecord::Migration
  def change
    add_column :announcements, :Authorized, :boolean
  end
end
