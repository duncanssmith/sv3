class AddMacAddress < ActiveRecord::Migration
  def self.up
    add_column :devices, :mac_address, :string
		add_column :devices, :location_id, :integer
  end

  def self.down
    remove_column :devices, :mac_address
		remove_column :devices, :location_id
  end
end
