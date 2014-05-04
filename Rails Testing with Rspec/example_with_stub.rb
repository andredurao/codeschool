describe Zombie do
	let(:zombie) { Zombie.create }

	context "#decapitate" do
		it 'calls weapon.slice' do
			zombie.weapon.should_receive(:slice)
			zombie.decapitate
		end
		it 'sets status to dead again' do
			zombie.weapon.stub(:slice)
			zombie.decapitate
			zombie.status.should == 'dead again'
		end
	end
end
