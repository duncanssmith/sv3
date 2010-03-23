class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.string :name
      t.string :serial
      t.string :assetnumber
      t.string :deploymentstatus

      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
