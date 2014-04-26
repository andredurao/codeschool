class CreatingATweetTest < ActionDispatch::IntegrationTest
  def setup
    @zombie = zombies(:ash)
    @tweet_attributes = {tweet: {zombie_id: @zombie.id, status: 'Test tweet'}}
  end

  test "Responds with a redirect to the tweet page" do
    post tweets_url, @tweet_attributes
    assert_redirected_to tweet_url(Tweet.last)
  end
end




class CreatingATweetTest < ActionDispatch::IntegrationTest
  test 'should create a new tweet' do
    visit new_tweet_url
    fill_in 'Status', with: 'I love the way your brain feels'
    select 'Ash', from: 'Zombie'
    click_button 'Create Tweet'

    assert_equal tweet_path(Tweet.last), current_path
  end
end





class CreatingATweetTest < ActionDispatch::IntegrationTest
  test 'should go to new tweet page' do
    visit root_path
    click_link 'New Tweet'
    assert_equal new_tweet_path, current_path
  end
end
