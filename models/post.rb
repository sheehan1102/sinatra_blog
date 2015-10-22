class Post
	attr_accessor :title, :content
	attr_reader :id, :created_at

	@@id = 1

	def initialize(title, content)
		@title = title
		@content = content
		@created_at = DateTime.now
		@id = @@id
		@@id += 1
	end
end