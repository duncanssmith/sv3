class CreateDevices < ActiveRecord::Migration
  def self.up
    create_table :devices do |t|
      t.string :asset_id
      t.string :make
      t.string :model
      t.string :serial
      t.string :network_user_name
      t.string :node
      t.string :os
      t.string :os_service_level
      t.string :chassis
      t.string :domain
      t.string :ip
      t.integer :processor_count
      t.string :processor_type
      t.integer :processor_speed
      t.integer :ram
      t.date :bios_date

      t.timestamps
    end
  end

  def self.down
    drop_table :devices
  end
end
