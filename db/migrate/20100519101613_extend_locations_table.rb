class ExtendLocationsTable < ActiveRecord::Migration
  def self.up
		add_column :locations, :site_id, :integer
		rename_column :locations, :address5, :country
  end

  def self.down
		remove_column :locations, :site_id
		rename_column :locations, :country, :address5
  end
end
