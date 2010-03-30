module ProductsHelper

	def add_version_link(name)
		link_to_function name do |page|
		page.insert_html :bottom, :versions, :partial => 'version', :object => Version.new
		end
	end
end
