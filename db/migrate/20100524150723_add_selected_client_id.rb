class AddSelectedClientId < ActiveRecord::Migration
  def self.up
		add_column :users, :selected_client_id, :integer
  end

  def self.down
		remove_column :users, :selected_client_id
  end
end
