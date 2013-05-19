class CreateTerritories < ActiveRecord::Migration
  def change
    create_table :territories do |t|
      t.integer :sale_id
      t.timestamps
    end
  end
end
