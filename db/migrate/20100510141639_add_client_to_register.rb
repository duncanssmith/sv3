class AddClientToRegister < ActiveRecord::Migration
  def self.up
    add_column :registers, :client_id, :integer
  end

  def self.down
    remove_column :registers, :client_id
  end
end
