class UpdateUserToAuthlogic < ActiveRecord::Migration
  def self.up
		add_column :users, :email, :string
		remove_column :users, :type
		remove_column :users, :company
  end

  def self.down
		remove_column :users, :email
		add_column :users, :type, :string
		add_column :users, :company, :string
  end
end
