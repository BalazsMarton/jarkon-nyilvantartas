class CustomersController < CatalogController
    def index
		prepare_customers
   	end

   	def show
   		prepare_vehicles
   		prepare_customer
   	end
end