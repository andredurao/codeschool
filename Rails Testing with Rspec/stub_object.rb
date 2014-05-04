# app/models/zombie.rb
def geolocate_with_object
	loc = Zoogle.graveyard_locator(self.graveyard)
	"#{loc.latitude}, #{loc.longitude}"
end

# spec/models/zombie_spec.rb
it 'returns properly formatted lat, long' do
	loc = stub(latitude: 2, longitude: 3)
	Zoogle.stub(:graveyard_locator).returns(loc)
	zombie.geolocate_with_object.should == '2, 3'
end
