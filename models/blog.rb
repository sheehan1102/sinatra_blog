class Blog
	attr_reader :posts

	def initialize
		@posts = []
	end

	def add_post(post)
		@posts << post
	end

	def ordered_posts
		@posts.sort { |a, b| b.created_at <=> a.created_at }
	end

	def find_post_by_id(id)
		@posts.find { |post| post.id == id }
	end

	def delete_post(id)
		@posts.delete(find_post_by_id(id))
	end
end