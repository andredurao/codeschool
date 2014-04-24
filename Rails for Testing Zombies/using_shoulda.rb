class ZombieTest < ActiveSupport::TestCase
	should validate_presence_of(:name)
	should validate_presence_of(:graveyard)
	should ensure_length_of(:name).is_at_most(15)
	should have_many(:tweets)
end

should validate_uniqueness_of(:name)
should ensure_length_of(:password).is_at_least(5).is_at_most(20)
should validate_numericality_of(:age)
should_not allow_value('blah').for(:email)
should allow_value('a@b.com').for(:email)
should ensure_inclusion_of(:age).in_range(1..100)
should_not allow_mass_assignment_of(:password)
should belong_to(:zombie)
should validate_acceptance_of(:terms_of_service)