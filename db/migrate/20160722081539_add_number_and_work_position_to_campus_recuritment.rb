class AddNumberAndWorkPositionToCampusRecuritment < ActiveRecord::Migration
  def change
    add_column :campus_recuritments, :number, :integer
    add_column :campus_recuritments, :workPosition, :string
    add_column :campus_recuritments, :dipolma, :string
  end
end
