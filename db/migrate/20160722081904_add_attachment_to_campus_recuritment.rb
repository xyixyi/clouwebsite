class AddAttachmentToCampusRecuritment < ActiveRecord::Migration
  def change
    add_column :campus_recuritments, :attachment, :string
  end
end
