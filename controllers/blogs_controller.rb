post1 = Post.new("This is an awesome post on cats", "This is all of my content on cats!", "Sheehan", "General")
post2 = Post.new("This is a cool post on dogs", "This is all of my content on dogs!", "Sheehan", "General")

blog = Blog.new
blog.add_post(post1)
blog.add_post(post2)

get "/" do
	@posts = blog.ordered_posts
	erb :home
end

get "/post/:id" do
	@post = blog.find_post_by_id(params[:id].to_i)
	erb :post
end

get "/create_new" do
	erb :new_post
end

post "/create_new" do
	blog.add_post(Post.new(params[:title], params[:content], params[:author], params[:category]))
	redirect to("/")
end

get "/delete_post/:id" do
	blog.delete_post(params[:id].to_i)
	redirect to("/")
end

