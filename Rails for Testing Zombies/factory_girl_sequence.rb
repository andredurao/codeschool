FactoryGirl.define do
	factory :zombie do
		sequence(:name) { |i| "Ash #{i}" }
		graveyard 'Oak Park'
	end
end