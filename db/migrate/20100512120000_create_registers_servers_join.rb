class CreateRegistersServersJoin < ActiveRecord::Migration
  def self.up
					create_table 'registers_servers', :id => false do |t|
 						t.integer 'register_id'
						t.integer 'server_id'
					end
  end

  def self.down
					drop table 'registers_servers'
  end
end
