

class EpisodesController < ApplicationController

	def create
		episode = Episode.new(episode_params)
		if episode.save
			render nothing: true, status: 204, location: episode
			# => same as 
			head 204, location: episode
			# => same as
			head :no_content, location: episode
		end
	end



	# => ........

end

# => 204 status code means server fulfilled request but does not need to return entity body