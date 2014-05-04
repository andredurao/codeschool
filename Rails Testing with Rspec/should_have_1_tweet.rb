decribe Zombie do
	it 'increases the number of tweets' do
		zombie = Zombie.new(name: 'Ash')
		zombie.tweets.new(message: "Arrrgggggggghhhhh")
		zombie.tweets.should have(1).tweet
	end
end

