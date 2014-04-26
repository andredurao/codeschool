class TweetDisplaysStatusTest < ActionDispatch::IntegrationTest
  def setup
    @tweet = tweets(:hello_world)
  end

  test "Tweet page responds successfully" do
    get tweet_url @tweet
    assert_response :success
  end

  test "Tweet displays status in heading" do 
    get tweet_url @tweet
    assert_select 'h1', @tweet.status
  end
end




class TweetDisplaysStatusTest < ActionDispatch::IntegrationTest
  def setup
    @tweet = tweets(:hello_world)
  end

  test "Tweet displays status in heading" do
    visit tweet_url(@tweet)
    has_selector? 'h1', text: @tweet.status
  end
end
