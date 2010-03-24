class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :name
      t.string :reference
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :address4
      t.string :address5
      t.string :postcode

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
