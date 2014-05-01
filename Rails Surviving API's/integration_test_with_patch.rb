
class EpisodeController < ApplicationController

	def update 
		episode = Episode.find(params[:id])
		if episode.update(episode_params)
			render json: episode, status: 200
		else
			render json: episode.errors, status: 422 # client submitted invalid data
		end
	end

	private

	def episode_params
		params.require(:episode).permit(:title, :description)
	end
end

class Episode 
	validates :title, length: { minimum: 10 }
end





class UpdatingEpisodesTest < ActionDispatch::IntegrationTest

	setup { @episode = Episode.create(title: 'First title') }

	test 'successful update' do
		patch "/episodes/#{@episode.id}",
			{ episode: { title: 'First Title Edit' } }.to_json,
			{ 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

		assert_equal 200, response.status
		assert_equal 'First Title Edit', @episode.reload.title # reload record from database
	end
end



# => Testing: episde `title` too short
class UpdatingEpisodesTest < ActionDispatch::IntegrationTest

	setup { @episode = Episode.create(title: 'First title') }

	test 'successful update' do
		patch "/episodes/#{@episode.id}",
			{ episode: { title: 'short' } }.to_json,
			{ 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

		assert_equal 422, response.status
	end
end
