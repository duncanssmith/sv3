class AddLicenceIdToInstallation < ActiveRecord::Migration
  def self.up
		add_column :installations, :licence_id, :integer
  end

  def self.down
		remove_column :installations, :licence_id
  end
end
