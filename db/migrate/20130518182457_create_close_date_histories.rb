class CreateCloseDateHistories < ActiveRecord::Migration
  def change
    create_table :close_date_histories do |t|
      t.integer :close_date_id
      t.date :data
      t.timestamps
    end
  end
end
