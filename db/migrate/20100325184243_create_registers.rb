class CreateRegisters < ActiveRecord::Migration
  def self.up
    create_table :registers do |t|
      t.string :name
      t.datetime :date
      t.string :frequency
      t.string :type
      t.integer :accuracy
      t.integer :device_id
      t.integer :asset_id

      t.timestamps
    end
  end

  def self.down
    drop_table :registers
  end
end
