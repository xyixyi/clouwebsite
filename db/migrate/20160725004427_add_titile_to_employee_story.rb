class AddTitileToEmployeeStory < ActiveRecord::Migration
  def change
    add_column :employee_stories, :title, :string
  end
end
