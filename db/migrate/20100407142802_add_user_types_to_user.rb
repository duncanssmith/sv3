class AddUserTypesToUser < ActiveRecord::Migration
  def self.up
		add_column :users, :type, :string
		add_column :users, :company, :string
		add_column :users, :client_id, :integer
  end

  def self.down
		remove_column :users, :type
		remove_column :users, :company
		remove_column :users, :client_id
  end
end
