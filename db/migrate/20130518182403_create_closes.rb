class CreateCloses < ActiveRecord::Migration
  def change
    create_table :closes do |t|
      t.integer :sale_id
      t.timestamps
    end
  end
end
