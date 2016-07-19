class AddTimeToNews < ActiveRecord::Migration
  def change
    add_column :news, :time, :datetime
  end
end
