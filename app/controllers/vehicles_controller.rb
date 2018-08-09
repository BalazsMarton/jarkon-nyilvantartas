class VehiclesController < CatalogController
    def index
    	prepare_vehicles
		prepare_customers
	end
end