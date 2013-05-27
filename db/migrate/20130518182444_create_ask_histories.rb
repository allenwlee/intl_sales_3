class CreateAskHistories < ActiveRecord::Migration
  def change
    create_table :ask_histories do |t|
      t.integer :sale_id
      t.decimal :data
      t.timestamps
    end
  end
end
