class RenameRegisterFields < ActiveRecord::Migration
  def self.up
		rename_column :registers, :type, :regtype
  end

  def self.down
		rename_column :registers, :regtype, :type
  end
end
