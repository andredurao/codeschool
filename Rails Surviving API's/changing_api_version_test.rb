class ApplicationController < ActionController::Base

	before_action -> { @remote_ip = request.headers['REMOTE_ADDR'] }

end



# => Remove IP test

class ChangingApiVersionsTest < ActionDispatch::IntegrationTest

	setup { @ip = '123.123.12.12' }

	test '/v1 returns version 1' do
		get '/v1/zombies', {}, { 'REMOTE_ADDR' => @ip }
		assert_equal 200, response.status
		assert_equal "#{@ip} Version One!", response.body
	end

	test '/v2 returns version 2' do
		get '/v2/zombies', {}, { 'REMOTE_ADDR' => @ip }
		assert_equal 200, response.status
		assert_equal "#{@ip} Version Two!", response.body
	end


end