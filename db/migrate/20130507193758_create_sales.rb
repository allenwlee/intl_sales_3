class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :territory
      t.decimal :bid, :ask, :close
      t.datetime :close_date
      t.integer :user_id
    end
  end
end
