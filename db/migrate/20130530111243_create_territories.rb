class CreateTerritories < ActiveRecord::Migration
  def change
    create_table :territories do |t|
      t.string :name
      t.integer :sale_id
    end
  end
end
