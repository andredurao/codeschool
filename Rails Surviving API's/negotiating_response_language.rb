# => test/integration/changing_locales_test.rb

class ChangingLocalesTest < ActionDispatch::IntegrationTest

	test 'returns list of zombies in english' do
		get '/zombies', {}, {'Accept-Language' => 'en', 'Accept' => Mime::JSON }
		assert_equal 200, response.status
		zombies = json(response.body)
		assert_equal "Watch out for #{zombies[0][:name]}!", zombies[0][:message]
	end

	# => ...
end