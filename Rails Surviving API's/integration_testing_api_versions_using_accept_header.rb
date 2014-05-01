
# => lib/api_version.rb
class ApiVersion

	def initialize(version, default=false)
		@version, @default = version, default
	end

	# called for each request
	def matches?(request)
		@default || check_headers(request.headers)
	end

	private

	def check_headers(headers)
		accept = headers['Accept']
		accept && accept.include?("application/vnd.apocalypse.#{@version}+json") # matches specific version
	end

end

# => config/routes.rb
require 'api_version'
CodeSchoolZombies::Application.routes.draw do

	scope module: v1, constraints: ApiVersion.new('v1') do
		resources :zombies
	end

	# default version is v2, default must be last
	scope module: v1, constraints: ApiVersion.new('v2', true) do
		resources :zombies
	end

end





class ChangingApiVersionsTest < ActionDispatch::IntegrationTest

	setup { @ip = '123.123.12.12' }

	test 'returns version one via Accept Header' do 
		get '/zombies', {},
			{	'REMOTE_ADDR' => @ip, 'Accept' => 'application/vnd.apocalypse.v1+json' }

		assert_equal 200, reposne.status
		assert_equal "#{@ip} Version One!", reposne.body
		assert_equal Mime::JSON, reposne.content_type # standard format back makes it easier for different API clients to understand

		# => ...

	end
end