
# => Rails has built-in support for basic auth
class EpisodesController < ApplicationController
	before_action :authenticate

	def index 
		episodes = Episode.all
		render json: episodes, status: 200
	end


	protected

	def authenticate
		authenticate_or_request_with_http_basic do |username, password|
			User.authenticate(username, password)
		end
	end

end



class ListingEpisodesTest < ActionDispatch::IntegrationTest

	setup { @user = User.create!(username: 'food', 'password') }

	test 'valid username and password' do 
		get '/episodes', {}, { 'Authorization' => 'Basic Zmafj220akfla3903' }

		assert_equal 200, response.status
	end

	test 'missing credentials' do
		get '/episodes', {}, {}
			
		assert_equal 401, response.status
	end
end



# => method for encoding
class ListingEpisodesTest < ActionDispatch::IntegrationTest

	setup { @user = User.create!(username: 'food', 'password') }


	def encode(username, password)
		ActionController::HttpAuthentication::Basic.encode_credentials(username, password)
	end

	test 'valid username and password' do 
		get '/episodes', {}, { 'Authorization' => encode(@user.username, @user.password) }

		assert_equal 200, response.status
	end

end
