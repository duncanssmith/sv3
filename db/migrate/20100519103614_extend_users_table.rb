class ExtendUsersTable < ActiveRecord::Migration
  def self.up
		add_column :users, :firstname, :string
		add_column :users, :lastname, :string
		add_column :users, :site_id, :integer
		add_column :users, :phone, :string
		add_column :users, :mobile, :string
		add_column :users, :job_title, :string
		add_column :users, :department, :string
		add_column :users, :cost_centre, :string
		add_column :users, :status, :string
		
  end

  def self.down
		remove_column :users, :firstname, :string
		remove_column :users, :lastname, :string
		remove_column :users, :site_id, :integer
		remove_column :users, :phone, :string
		remove_column :users, :mobile, :string
		remove_column :users, :job_title, :string
		remove_column :users, :department, :string
		remove_column :users, :cost_centre, :string
		remove_column :users, :status, :string
  end
end
