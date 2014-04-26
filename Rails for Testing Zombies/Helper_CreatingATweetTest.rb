class CreatingATweetTest < ActionDispatch::IntegrationTest
  test 'should create a new tweet' do
    create_tweet_for 'Ash', 'I like the way your brain feels'
    assert_equal tweet_path(Tweet.last), current_path
  end
end


# test_helper.rb
class ActiveSupport::TestCase
  def create_tweet_for zombie, status
    visit new_tweet_url
    fill_in 'Status', with: status
    select zombie, from: 'Zombie'
    click_button 'Create Tweet'
  end
end
