class TweetTest < ActiveSupport::TestCase
  def setup
    @tweet = tweets(:hello_world)
  end

  test "status_image calls the ZwitPic get_status_image api" do 
    ZwitPic.expects(:get_status_image).with(@tweet.id)
      .returns(['Scary Zombie', 'http://zwitpic.com/scary_zombie.png'])
    @tweet.status_image
  end
end