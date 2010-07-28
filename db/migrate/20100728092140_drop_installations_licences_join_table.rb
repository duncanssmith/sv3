class DropInstallationsLicencesJoinTable < ActiveRecord::Migration
  def self.up
		drop_table :installations_licences
  end

  def self.down
		create_table :installations_licences, :id => false do |t|
			t.integer :installation_id
			t.integer :licence_id
		end
  end
end
