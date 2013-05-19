class CreateCloseHistories < ActiveRecord::Migration
  def change
    create_table :close_histories do |t|
      t.integer :close_id
      t.decimal :data
      t.timestamps
    end
  end
end
