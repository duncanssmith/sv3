class CreateVersions < ActiveRecord::Migration
  def self.up
    create_table :versions do |t|
      t.string :name
      t.string :fullname
      t.integer :product_id
      t.string :serial
      t.string :language

      t.timestamps
    end
  end

  def self.down
    drop_table :versions
  end
end
