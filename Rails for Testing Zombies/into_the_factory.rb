

# In your tests


	Factory(:zombie) # => creates fixtures (same as)
	FactoryGirl.create(:zombie) # => returns a new saved, zombie

	FactoryGirl.build(:zombie) # => returns new: unsaved, not validated Zombie

	FactoryGirl.attributes_for(:zombie) # => returns a hash of attributes ( hash of attributes that make up valid Zombie)


	