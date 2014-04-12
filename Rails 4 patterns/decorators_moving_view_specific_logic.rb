# app/models/post.rb
class Post < ActiveRecord::Base
end

# app/controllers/posts_controller.rb
class PostsController < ApplicationController
	def show
		post = Post.find(params[:id])
		@post_decorator = PostDecorator.new(post)
	end
end

# app/decorators/post_decorator.rb
class PostDecorator
	attr_reader :post

	def initialize(post)
		@post = post
	end

	def is_front_page?
		post.published_at > 2.days.ago
	end

	# Forwards any undefined method to wrapped object
	def method_missing(method_name, *args, &block)
		post.send(method_name, *args, &block)
	end

	# super will invoke response from parent object
	def respond_to_missing?(method_name, include_private = false)
		post.respond_to?(method_name, include_private) || super
	end
end

# app/views/posts/show.html.erb
<% if @post_decorator.is_front_page? %>
	<%= image_tag(@post_decorator.image) %>
<% end %>
