class CreateAssetsDevices < ActiveRecord::Migration
  def self.up
		create_table :assets_devices, :id => false do |t|
			t.integer :asset_id
			t.integer :device_id
		end
  end

  def self.down
		drop_table :assets_devices
  end
end
