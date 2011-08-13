# encoding: utf-8
require "rubygems"
require "sinatra"
require "data_mapper"
require "dm-sqlite-adapter"
require "haml"

require_relative "models"

class MyApp < Sinatra::Application
	get "/" do
	  if Post.all.count > 0
	    @posts = Post.all
	  else
	    @posts = []
	  end
	  haml :index
	end
end