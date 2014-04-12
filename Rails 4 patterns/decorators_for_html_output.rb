# app/decorators/post_decorator.rb
class PostDecorator
	attr_reader :post

	# ..

	def classes 
		classes = ['page', 'btn']
		classes << 'cover' if post.is_front_page?
		classes
	end
end


# app/views/posts/show.html.erb
<article class="<%= @post_decorator.classes %>">
	<%= @post_decorator.content %>
</article>