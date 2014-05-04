describe Zombie do
	it 'include tweets' do
		tweet1 = Tweet.new(status: 'Uhdhghdg')
		tweet2 = Tweet.new(status: 'Arrrrh')
		zombie = Zombie.new(name: 'Ash', tweets: [tweet1, tweet2])
		zombie.tweets.should include(tweet1)
		zombie.tweets.should include(tweet2)
	end
end
