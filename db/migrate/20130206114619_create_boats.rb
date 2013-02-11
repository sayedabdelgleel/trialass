class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats, {:id => false} do  |t|
      t.string :name
      t.string :model_name
      t.integer :model_year , :default => 0
      t.string :description
      t.integer :activated , :default => 0
      t.string :hull
      t.integer :length_ft , :default => 0
      t.integer :cabins , :default => 0
      t.integer :berths , :default => 0
      t.integer :heads , :default => 0
      t.integer :max_persons , :default => 0
      t.integer :fuel_capacity , :default => 0
      t.integer :water_capacity , :default => 0
      t.string :permalink, :unique => true

      t.timestamps
    end
  end
end
