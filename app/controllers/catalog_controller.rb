class CatalogController < ApplicationController
	before_action :require_login
	# this is necessary if you want the project menu in the sidebar for your view
	# before_filter :find_optional_project, only: :index
	def index
		prepare_vehicles
		prepare_customers
	end

	def connection_error
	end

	def prepare_vehicles
		vehicles_url=ENV["VEHICLES_URL"]
		@vehiclelist = Nyilvantartas.lekeres(vehicles_url)
		rescue 
		redirect_to :controller => 'catalog', :action => 'connection_error'

	end
	def prepare_customers
		customers_url=ENV["CUSTOMERS_URL"]
		@customerlist = Nyilvantartas.lekeres(customers_url)
		rescue 
		redirect_to :controller => 'catalog', :action => 'connection_error'
		
	end
	def prepare_customer
		customer_url=ENV["CUSTOMERS_URL"]+"/#{params[:id]}"
		@customer = Nyilvantartas.lekeres(customer_url)
		rescue 
		redirect_to :controller => 'catalog', :action => 'connection_error'

	end
end

