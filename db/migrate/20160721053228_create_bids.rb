class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.string :position
      t.string :department
      t.datetime :deadline
      t.string :description

      t.timestamps null: false
    end
  end
end
