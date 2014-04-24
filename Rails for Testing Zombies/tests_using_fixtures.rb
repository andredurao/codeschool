class TweetTest < ActiveSupport::TestCase
  test "tweet contains a zombie" do
    tweet = tweets(:hello_world)
    assert_equal zombies(:ash), tweet.zombie, "tweet doesn't contain a zombie"
  end
end
