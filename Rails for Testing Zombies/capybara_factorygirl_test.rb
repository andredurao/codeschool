class TweetTest < ActionDispatch::IntegrationTest
  test "tweet page has zombie name" do 
    tweet = Factory(:tweet)

    visit tweets_url

    click_link tweet.status

    within("h3") do
      assert has_content?(tweet.zombie.name)
    end
  end
end