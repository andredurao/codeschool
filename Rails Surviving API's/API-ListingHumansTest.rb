class ListingHumansTest < ActionDispatch::IntegrationTest
  setup { host! 'api.example.com' }

  test 'returns a list of humans by brain type' do
    Human.create!(name: 'Allan', brain_type: 'large')
  	Human.create!(name: 'John', brain_type: 'small')
    
    get '/humans?brain_type=small'
		assert_equal 200, response.status
    
    humans = JSON.parse(response.body, symbolize_names: true)
    names = humans.collect { |human| human[:name] }
    
    assert_includes names, 'John'
    refute_includes names, 'Allan'
  end
end




class ListingHumansTest < ActionDispatch::IntegrationTest
  setup { host! 'api.example.com' }

  test 'returns human by id' do
    human = Human.create!(name: 'Ash')
    get "/humans/#{human.id}"
    assert_equal 200, response.status
    human_response = json(response.body)
    assert_equal human.name, human_response[:name]
  end
end
