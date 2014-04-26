class TweetTest < ActiveSupport::TestCase

  test "A tweet requires a status" do
    tweet = Factory.build(:tweet, status: nil)
    assert !tweet.valid?, "Status is not being validated"
  end
end