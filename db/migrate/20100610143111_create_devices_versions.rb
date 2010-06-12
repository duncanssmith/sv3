class CreateDevicesVersions < ActiveRecord::Migration
  def self.up
		create_table :devices_versions, :id => false do |t|
		  t.integer :device_id
			t.integer :version_id
    end
  end

  def self.down
		drop_table :devices_versions
  end
end
