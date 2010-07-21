class AddClientIdToInstallation < ActiveRecord::Migration
  def self.up
		add_column :installations, :client_id, :integer
  end

  def self.down
		remove_column :installations, :client_id
  end
end
