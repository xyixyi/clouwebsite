class AddAttachmentToProduct < ActiveRecord::Migration
  def change
    add_column :products, :attachment, :string
  end
end
