class AddAuthorizedToQandA < ActiveRecord::Migration
  def change
    add_column :qand_as, :Authorized, :boolean
  end
end
