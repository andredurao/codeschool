class CreatingHumansTest < ActionDispatch::IntegrationTest
  test 'creates human' do
    post '/humans',
    	{ human: 
        { name: 'John', brain_type: 'small' } 
    	}.to_json,
    	{ 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 201, response.status
    assert_equal Mime::JSON, response.content_type
  end
end
