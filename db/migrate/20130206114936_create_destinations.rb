class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations , {:id => false} do |t|
      t.string :name
      t.integer :starting_price , :default => 0
      t.string :tagline
      t.text :introduction
      t.string :weather_months
      t.integer :weather_temperature , :default => 0
      t.integer :weather_high , :default => 0
      t.integer :weather_low , :default => 0
      t.integer :activated , :default => 0
      t.string :permalink, :unique => true

      t.timestamps
    end
  end
end
