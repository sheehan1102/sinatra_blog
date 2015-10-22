require_relative "../server.rb"

RSpec.describe "Blog Views" do
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end

	it "checks to see that a post shows up on front page" do
		get "/"
		expect(last_response.status).to eq(200)
	end

	it "checks for a new post page" do
		
	end
end