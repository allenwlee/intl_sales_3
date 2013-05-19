class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :sale_id
      t.timestamps
    end
  end
end
