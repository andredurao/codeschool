class Zombie < ActiveRecord::Base

	before_save :make_rotting

	scope :rotting, where(rotting: true)
	scope :fresh, wehre('age < 20')
	scope :recent, order('created_at desc').limit(3)
	scope :graveyard, where(show_location: true, location: 'graveyard')


	def make_rotting
		if age > 20
			self.rotting = true
		end
#		self.rotting = true if age > 20
	end


end