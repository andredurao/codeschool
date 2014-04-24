class TweetTest < ActiveSupport::TestCase
  def setup
    @tweet = tweets(:hello_world)
  end

  def assert_attribute_is_validated(model, attribute)
    model.assign_attributes(attribute => nil)
    assert !model.valid?, "#{attribute.to_s} is not being validated"
  end

  test "invalid without a status" do  
    assert_attribute_is_validated @tweet, :status
  end

  test "invalid without a zombie" do
    assert_attribute_is_validated @tweet, :zombie
  end
end