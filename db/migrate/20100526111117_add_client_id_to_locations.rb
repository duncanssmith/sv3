class AddClientIdToLocations < ActiveRecord::Migration
  def self.up
		add_column :locations, :client_id, :integer
		remove_column :clients, :location_id
  end

  def self.down
		remove_column :locations, :client_id
		add_column :clients, :location_id, :integer
  end
end
