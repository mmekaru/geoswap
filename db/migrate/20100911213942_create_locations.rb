class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
	  t.decimal :lat, :lng
	  t.string :name
	  
      t.timestamps
    end
    add_index :locations, [:lat, :lng]
  end

  def self.down
    drop_table :locations
  end
end
