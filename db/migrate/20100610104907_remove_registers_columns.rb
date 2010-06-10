class RemoveRegistersColumns < ActiveRecord::Migration
  def self.up
		remove_column :registers, :device_id
		remove_column :registers, :asset_id
  end

  def self.down
		add_column :registers, :device_id, :integer
		add_column :registers, :asset_id, :integer
  end
end
