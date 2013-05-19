class CreateAsks < ActiveRecord::Migration
  def change
    create_table :asks do |t|
      t.integer :sale_id
      t.timestamps
    end
  end
end
