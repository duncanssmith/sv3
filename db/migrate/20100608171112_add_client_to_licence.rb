class AddClientToLicence < ActiveRecord::Migration
  def self.up
    add_column :licences, :client_id, :integer
  end

  def self.down
    remove_column :licences, :client_id
  end
end
