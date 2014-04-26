test 'Navigation is available to the zombie page' do 

	### 
	zombie = Factory(:zombie)
	tweet = Factory(:tweet, zombie: zombie) # if zombie is not passed, tweet factory would create new zombie
	###
	# => OR
	###
	tweet = Factory(:tweet)
	zombie = tweet.zombie

	visit root_url
	withit("tweet_#{tweet.id}") do 
		click_link zombie.name
		assert_equal zombie_path(zombie), current_path
	end
end
