class RemoveClientIdFromInstallation < ActiveRecord::Migration
  def self.up
		remove_column :installations, :client_id
  end

  def self.down
		add_column :installations, :client_id, :integer
  end
end
