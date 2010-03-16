class CreateCompliances < ActiveRecord::Migration
  def self.up
    create_table :compliances do |t|
      t.string :product
      t.string :edition
      t.integer :entitlement_qty
      t.integer :installs
      t.float :value
      t.float :unit_cost
      t.string :entitlement_status
      t.integer :compliance
      t.float :compliance_value
      t.string :compliance_status

      t.timestamps
    end
  end

  def self.down
    drop_table :compliances
  end
end
