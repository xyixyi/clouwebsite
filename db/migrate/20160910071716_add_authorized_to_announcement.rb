class AddAuthorizedToAnnouncement < ActiveRecord::Migration
  def change
    add_column :announcements, :Authorized, :boolean, :default => false
  end
end
