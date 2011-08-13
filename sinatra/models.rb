# encoding: utf-8
DataMapper.setup(:default, :adapter => "sqlite3", :database => "#{Dir.pwd}/database.sqlite3")

class Post
  include DataMapper::Resource

  property :id, Serial
  property :title, Text
  property :text, Text
end

DataMapper.finalize
DataMapper.auto_upgrade!