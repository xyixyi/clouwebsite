class AddAttachmentToSocietyRecuritment < ActiveRecord::Migration
  def change
    add_column :society_recuritments, :attachment, :string
  end
end
