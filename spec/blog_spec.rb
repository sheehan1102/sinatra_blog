RSpec.describe "Blog with Posts" do
	before :each do
		@blog = Blog.new
		@post = Post.new("Test post for blog", "Content for test post")
		@blog.add_post(@post)
	end

	it "adds a post" do
		expect(@blog.posts.length).to eq(1)
	end

	it "posts are unordered in regular array" do
		new_post = Post.new("New post", "New post content")
		new_post.instance_variable_set(:@created_at, DateTime.now + 7)
		@blog.add_post(new_post)
		expect(@blog.posts.first.created_at).to be < @blog.posts.last.created_at 
	end

	it "puts post in order of most recently created first" do
		new_post = Post.new("New post", "New post content")
		new_post.instance_variable_set(:@created_at, DateTime.now + 7)
		@blog.add_post(new_post)
		expect(@blog.ordered_posts.first.created_at).to be > @blog.ordered_posts.last.created_at
	end

	it "finds post by id" do
		expect(@blog.find_post_by_id(@post.id)).to be_truthy
	end

	it "deletes post from blog" do
		@blog.delete_post(@post.id)
		expect(@blog.posts.size).to eq(0)
	end
end