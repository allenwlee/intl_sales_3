class CreateAskHistories < ActiveRecord::Migration
  def change
    create_table :ask_histories do |t|
      t.integer :ask_id
      t.decimal :data
      t.timestamps
    end
  end
end
