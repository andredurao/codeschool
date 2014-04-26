# /test/factories/zombies.rb

FactoryGirl.define do
	factory :zombie do
		name 'Ash'
		graveyard 'Oak Park'

		factory :zombie_bill do
			neme 'Bill'
			# Take's Ash graveyard
		end

		factory :zombie_mike do
			name 'Mike'
			graveyard 'Sunnyvalde'
		end

	end
end