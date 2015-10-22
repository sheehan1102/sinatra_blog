RSpec.describe "Posts" do
	before :each do
		@post = Post.new("This is my first post", "This is my content")
	end

	it "has the title passed to it" do
		expect(@post.title).to eq("This is my first post")
	end

	it "has the content passed to it" do
		expect(@post.content).to eq("This is my content")
	end

	it "has a created_at" do
		expect(@post.created_at).to be_truthy
	end

	it "has an id" do
		expect(@post.id).to be > 0
	end

	it "has unique id from ascending class variable" do
		expect(@post.id).to be < Post.new("Test", "Test").id
	end
end