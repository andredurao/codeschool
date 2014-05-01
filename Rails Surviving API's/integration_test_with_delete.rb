

class EpisodesController < ApplicationController

	def destroy
		episode = Episode.find(params[:id])
		episode.destroy
		head 204
	end

	# => same as
	def destroy
		episode = Episode.find_unarchived(params[:id])
		episode.archive
		head 204
	end
end


# => Archiving
class Episode < ActiveRecord::Base

	def self.find_unarchived(id)
		find_by!(id: id, archived: false)
	end

	def archive
		self.archive = true # => does not destroy, flags as archived
		self.save
	end
end





class DeletingEpisodesTest < ActionDispatch::IntegrationTest

	setup { @episode = Episode.create(title: 'I will be deleted') }

	test 'deletes existing episode' do 
		delete "/episodes/#{@episode.id}"

		assert_equal 204, response.status # => 204 response includes no content
	end
end