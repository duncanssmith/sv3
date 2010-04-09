class AddFieldsToCountries < ActiveRecord::Migration
  def self.up
    add_column :countries, :iso_code, :string
  end

  def self.down
    remove_column :countries, :iso_code
  end
end
