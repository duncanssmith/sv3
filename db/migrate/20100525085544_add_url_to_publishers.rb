class AddUrlToPublishers < ActiveRecord::Migration
  def self.up
		add_column :publishers, :url, :string
  end

  def self.down
		remove_column :publishers, :url
  end
end
