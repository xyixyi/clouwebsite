class AddNumberAndWorkPositionToSocietyRecuritment < ActiveRecord::Migration
  def change
    add_column :society_recuritments, :number, :integer
    add_column :society_recuritments, :workPosition, :string
    add_column :society_recuritments, :dipolma, :string
  end
end
