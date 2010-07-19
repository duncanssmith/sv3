class AddJoinIdsToLicencesAndInstallations < ActiveRecord::Migration
  def self.up
		add_column :installations, :licence_id, :integer
		add_column :licences, :installation_id, :integer
		
  end

  def self.down
		remove_column :installations, :licence_id
		remove_column :licences, :installation_id
  end
end
