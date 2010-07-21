class RemoveUnneccessaryCrossReferences < ActiveRecord::Migration
  def self.up
		remove_column :licences, :installation_id
		remove_column :installations, :licence_id
  end

  def self.down
		add_column :licences, :installation_id, :integer
		add_column :installations, :licence_id, :integer
  end
end
