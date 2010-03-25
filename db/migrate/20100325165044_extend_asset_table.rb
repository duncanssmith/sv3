class ExtendAssetTable < ActiveRecord::Migration
  def self.up
    add_column :assets, :device_id, :integer
    add_column :assets, :audit_type, :string
  end

  def self.down
		remove_column :assets, :device_id
		remove_column :assets, :audit_type
  end
end
