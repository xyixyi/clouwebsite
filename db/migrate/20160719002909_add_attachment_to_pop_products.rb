class AddAttachmentToPopProducts < ActiveRecord::Migration
  def change
    add_column :pop_products, :attachment, :string
  end
end
