class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.string :fullname
      t.integer :publisher_id
      t.string :serial
      t.string :sku
      t.string :identifier

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
