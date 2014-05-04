describe ZombieMailer do
	context '#tweet' do
		let(:zombie) { stub(:zombie, {email: 'anything@example.org'}) }
		let(:tweet) { stub(:tweet, {message: 'Arrrrgggghhhh'}) }

		subject { ZombieMailer.tweet(zombie, tweet) }
			its(:from) { should include('admin@codeschool.com') }
			its(:to) { should include(zombie.email) }
			its(:subject) { should == tweet.message }
		end
end

