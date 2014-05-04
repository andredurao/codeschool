class Zombie < ActiveRecord::Base
  validates :name, presence: true
end

describe Zombie do
  it 'validates presence of name' do
    zombie = Zombie.new(name: nil)
    zombie.should validate_presence_of_name
  end
end

# spec/support/validates_presence_of_name.rb
module ValidatePresenceOfName
  class Matcher
    def matches?(model)
      model.valid?
      model.errors.has_key?(:name)
    end
  end
end

RSpec.configure do |config|
  config.include ValidatePresenceOfName, type: :model
end
