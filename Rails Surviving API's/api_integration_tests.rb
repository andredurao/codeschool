# => config/routes.rb
namespace :api, path: '/', constraints: { subdomain: 'api' } | do
	resources :zombies	
end


# => app/controllers/api/zombies_controller.rb
module API
	class ZombiesController < ApplicationController
		def index
			zombies = Zombie.all
			render json: zombies
		end
	end
end



# => test/integration/listing_zombies.rb
require 'test_helper'

class ListingZombiesTest < ActionDispatch::IntegrationTest

	setup { host! 'api.example.com' } # by default Rails uses example.com

	test 'returns list of all zombies' do
		get '/zombies'
		assert_equal 200, response.status # => assert response.success?
		refute_empty response.body # => returned resource should contain body
	end

end

