class CreateLicences < ActiveRecord::Migration
  def self.up
    create_table :licences do |t|
      t.string :sku
      t.string :publisher
      t.string :product
      t.string :edition
      t.string :version
      t.string :identifying_number
      t.integer :product_id
      t.string :region_or_country
      t.string :cal
      t.string :licence_type
      t.string :term
      t.string :upgrade
      t.date :term_expiry_date
      t.string :ci_name
      t.string :base_licence
      t.date :maintenance_expiry
      t.string :entitlement_type
      t.string :cost_centre
      t.string :volume_licence_agreement_number
      t.string :agreement_location
      t.string :entitlement_location
      t.string :supplier
      t.string :supplier_invoice_number
      t.date :invoice_date
      t.string :po_number
      t.string :country_of_usage
      t.string :product_substitution_rights
      t.string :secondary_rights
      t.string :transferability
      t.string :external_licence_transfer_requirements
      t.string :linkages
      t.integer :total_cost_of_line_item
      t.integer :quantity
      t.string :unit
      t.integer :cost_unit
      t.integer :maintenance_pa

      t.timestamps
    end
  end

  def self.down
    drop_table :licences
  end
end
