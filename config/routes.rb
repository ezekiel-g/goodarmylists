Rails.application.routes.draw do
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	root 'games#index'

  	# devise_for :users
  	resources :games, path: '', param: :abbreviation, only: [:index]
  	
  	namespace :api do
		namespace :v1 do
			resources :games, only: [:index]
			resources :kow_armies, only: [:index]
			resources :kow_units, only: [:index]
			resources :kow_unit_options, only: [:index]	
			resources :kow_artefacts, only: [:index]
			resources :wmr_armies, only: [:index]
			resources :wmr_units, only: [:index]
			resources :wmr_magic_items, only: [:index]	
			resources :wmr_spells, only: [:index]
		end
	end
end