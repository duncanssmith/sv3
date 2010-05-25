class RemoveExtraFieldsFromUser < ActiveRecord::Migration
  def self.up
		remove_column :users, :firstname
		remove_column :users, :lastname
		remove_column :users, :site_id
		remove_column :users, :phone
		remove_column :users, :mobile
		remove_column :users, :job_title
		remove_column :users, :department
		remove_column :users, :cost_centre
		remove_column :users, :status
		remove_column :users, :selected_client_id
  end

  def self.down
		add_column :users, :firstname, :string
		add_column :users, :lastname, :string
		add_column :users, :site_id, :integer
		add_column :users, :phone, :string
		add_column :users, :mobile, :string
		add_column :users, :job_title, :string
		add_column :users, :department, :string
		add_column :users, :cost_centre, :string
		add_column :users, :status, :string
		add_column :users, :selected_client_id, :integer
  end
end
