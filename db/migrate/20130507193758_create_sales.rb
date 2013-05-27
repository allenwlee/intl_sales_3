class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :project_id
      t.string :territory
      t.decimal :bid, :ask, :close, :close_date
      t.timestamps
    end
  end
end
