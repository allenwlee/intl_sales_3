class CreateCloseDates < ActiveRecord::Migration
  def change
    create_table :close_dates do |t|
      t.integer :sale_id
      t.timestamps
    end
  end
end
