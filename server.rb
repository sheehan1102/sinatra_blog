require 'sinatra'
require 'sinatra/reloader'
require 'rack/test'
require 'pry'

# models
require_relative 'models/blog'
require_relative 'models/post'

# controllers
require_relative 'controllers/blogs_controller'