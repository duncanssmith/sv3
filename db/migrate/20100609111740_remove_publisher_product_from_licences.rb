class RemovePublisherProductFromLicences < ActiveRecord::Migration
  def self.up
		add_column :licences, :version_id, :integer
		add_column :licences, :country, :string
		remove_column :licences, :publisher
		remove_column :licences, :product
		remove_column :licences, :product_id
		remove_column :licences, :edition
		remove_column :licences, :version
		remove_column :licences, :region_or_country
  end

  def self.down
		add_column :licences, :publisher, :string
		add_column :licences, :product, :string
		add_column :licences, :product_id, :string
		add_column :licences, :edition, :string
		add_column :licences, :version, :string
		add_column :licences, :region_or_country, :string
  end
end
