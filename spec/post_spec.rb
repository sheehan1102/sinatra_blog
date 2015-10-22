RSpec.describe "Posts" do
	before :each do
		@post = Post.new("This is my first post")
	end

	it "has the title passed to it" do
		expect(@post.title).to eq("This is my first post")
	end




end