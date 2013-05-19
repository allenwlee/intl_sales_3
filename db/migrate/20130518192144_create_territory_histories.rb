class CreateTerritoryHistories < ActiveRecord::Migration
  def change
    create_table :territory_histories do |t|
      t.integer :territory_id
      t.string :data
      t.timestamps
    end

  end
end
