class AddAuthorizedToEmployeeStory < ActiveRecord::Migration
  def change
    add_column :employee_stories, :Authorized, :boolean, :default => false
  end
end
