class CreateInstallationsLicences < ActiveRecord::Migration
  def self.up
		create_table :installations_licences, :id => false do |t|
			t.integer :installation_id
			t.integer :licence_id
		end
  end

  def self.down
		drop_table :installations_licences
  end
end
