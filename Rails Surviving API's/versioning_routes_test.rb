
# => app/controllers/v1/zombies_controller.rb
module V1
	class ZombiesController < ApplicationController
	end
end

# => app/controllers/v2/zombies_controller.rb
module V2
	class ZombiesController < ApplicationController
	end
end



class RoutesTest < ActionDispatch::IntegrationTest

	test 'routes version' do 
		assert_generates '/v1/zombies', { controller: '/v1/zombies', action: 'index' }
		assert_generates '/v2/zombies', { controller: '/v2/zombies', action: 'index' }
	end

end

# => assert_generates method asserts the provided options that can be used to generate the expected path