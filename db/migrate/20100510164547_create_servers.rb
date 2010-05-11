class CreateServers < ActiveRecord::Migration
  def self.up
    create_table :servers do |t|
      t.string :name
      t.integer :client_id
      t.string :alternative_name
      t.string :licence_type
      t.integer :alt_reference
      t.string :comment
      t.string :scope

      t.timestamps
    end
  end

  def self.down
    drop_table :servers
  end
end
