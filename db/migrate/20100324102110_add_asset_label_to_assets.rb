class AddAssetLabelToAssets < ActiveRecord::Migration
  def self.up
		add_column :assets, :asset_label, :string
  end

  def self.down
  end
end
