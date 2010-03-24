class AddMacAddress < ActiveRecord::Migration
  def self.up
    add_column :devices, :mac_address, :string
		add_column :devices, :location_id, :integer
  end

  def self.down
  end
end
