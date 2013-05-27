class CreateBidHistories < ActiveRecord::Migration
  def change
    create_table :bid_histories do |t|
      t.integer :sale_id
      t.decimal :data
      t.timestamps
    end
  end
end
