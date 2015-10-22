require 'sinatra'
require 'sinatra/reloader'

require_relative 'models/blog'
require_relative 'models/post'

# test suite
require_relative 'spec/blog_spec'
require_relative 'spec/post_spec'