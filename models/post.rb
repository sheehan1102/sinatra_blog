class Post
	attr_accessor :title, :content, :author, :category
	attr_reader :id, :created_at

	@@id = 1

	def initialize(title, content, author, category)
		@title = title
		@content = content
		@author = author
		@category = category
		@created_at = DateTime.now
		@id = @@id
		@@id += 1
	end
end