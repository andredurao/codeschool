# => config/routes.rb

resources :zombies, except: :destroy
resources :tweets, only: :index

resources :humans, only: [:index, :show]
resources :animals, except: [:destroy, :edit, :update]


# DRY
with_options only: :index do |list_only|
	list_only.resources :zombies
	list_only.resources :humans
	list_only.resources :medical_kits
end


resources :episodes
resources :zombies, constraints: { subdomain: 'api' } # => http://api.example.com/zombies
resources :humans, constraints: { subdomain: 'api' }

# => same as

resources subdomain: 'api' do
	resources :zombies
	resources :humans
end



# Namespaced (organized controllers)
constraints subdomain: 'api' do
    namespace :api, path: '/', constraints: { subdomain: 'api' } do
  	resources :zombies
		resources :humans
  end
end


# => app/controllers/api/zombies_controller
module Api
	class ZombiesController < ApplicationController
	end
end
###