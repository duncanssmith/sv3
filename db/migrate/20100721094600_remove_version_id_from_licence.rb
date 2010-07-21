class RemoveVersionIdFromLicence < ActiveRecord::Migration
  def self.up
		remove_column :licences, :version_id
  end

  def self.down
		add_column :licences, :version_id, :integer
  end
end
