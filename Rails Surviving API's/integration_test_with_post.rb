
# => app/controllers/episodes_controller.rb
class EpisodesController < ApplicationController

	def create 
		episode = Episode.new(episode_params)
		if episode.save
			render json: episode, status: 201, location: episode
		else
			render json: episode.errors, status: 422
			# => same as
			render json: episode.errors, status: :unprocessable_entity
		end
	end

	private

	def episode_params
		params.require(:episode).permit(:title, :description)
	end
	
end


class Episode < ActiveRecord::Base
	validates :title, presence: true
end





# => success
class CreatingEpisodesTest < ActionDispatch::IntegrationTest

	test 'creates episodes' do
		post 'episodes',
			{ episode:
				{ title: 'Bananas', description: 'Learn about bananas' }
			}.to_json,
			{ 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

		assert_equal 201, response.status
		assert_equal Mime::JSON, response.content_type

		episode = json(response.body)
		assert_equal episode_url(episode[:id]), response.location
	end

end


# => error
class CreatingEpisodesTest < ActionDispatch::IntegrationTest

	test 'creates episodes' do
		post 'episodes',
			{ episode:
				{ title: nil, description: 'Learn about bananas' }
			}.to_json,
			{ 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

		assert_equal 422, response.status
		assert_equal Mime::JSON, response.content_type

		episode = json(response.body)
		assert_equal episode_url(episode[:id]), response.location
	end

end
