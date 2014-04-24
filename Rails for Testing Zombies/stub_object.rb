class TweetTest < ActiveSupport::TestCase
  def setup
    @tweet = tweets(:hello_world)
  end

  test "status_image returns a properly formated HTML image element with alt and src" do
    status_image = stub(name: 'Hello brains', url: 'http://zwitpic.com/2.jpg')
    ZwitPic.stubs(:get_status_image).with(@tweet.id).returns(status_image)
    assert_equal "<img src='http://zwitpic.com/2.jpg' alt='Hello brains' />", @tweet.status_image
  end
end