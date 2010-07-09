class RemoveLicenTypeFromServers < ActiveRecord::Migration
  def self.up
	  remove_column :servers, :licence_type
  end

  def self.down
	  add_column :servers, :licence_type, :integer
  end
end
