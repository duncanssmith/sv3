class CreateEntitlements < ActiveRecord::Migration
  def self.up
    create_table :entitlements do |t|
      t.integer :installation_id
      t.integer :version_id
      t.string :region
      t.string :agreement_type
      t.string :licence_type
      t.integer :location_id
      t.integer :quantity
      t.integer :cost
      t.string :currency
      t.string :document_reference
      t.string :document_type
      t.date :expiry
      t.date :support_expiry
      t.integer :entitlement_id
      t.string :supplier

      t.timestamps
    end
  end

  def self.down
    drop_table :entitlements
  end
end
