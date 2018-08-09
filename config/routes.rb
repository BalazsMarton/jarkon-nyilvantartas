Rails.application.routes.draw do
	get	'catalog/connection_error' => 'catalog#connection_error'
 	resources :catalog, only: [:index] do
		collection do
			resources :vehicles, only: [:index]
			resources :customers, only: [:index, :show]
		end 
	end
end