class AddEditorToNews < ActiveRecord::Migration
  def change
    add_column :news, :editor, :string
  end
end
