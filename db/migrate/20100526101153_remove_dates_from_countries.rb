class RemoveDatesFromCountries < ActiveRecord::Migration
  def self.up
		remove_column :countries, :created_at
		remove_column :countries, :updated_at
  end

  def self.down
		add_column :countries, :created_at, :datetime
		add_column :countries, :updated_at, :datetime
  end
end
