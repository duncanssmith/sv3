class CreateDevicesRegisters < ActiveRecord::Migration
  def self.up
		create_table :devices_registers, :id =>false do |t|
		  t.integer :device_id
		  t.integer :register_id
		end

  end

  def self.down
		drop_table :devices_registers
  end
end
