# encoding: utf-8
require "rubygems"
require "sinatra"
require "data_mapper"
require "dm-sqlite-adapter"

require './models'

class Setup < Thor
  include Thor::Actions
  desc "quick", "create some articles"
  def quick
		if Post.all.count == 0
		  i = 0
      3.times do
        Post.create(:title => "article ##{i}", :text => "Vous voila armé d'un nouveau marteau, ce n'est pas encore une masse, mais vous avez de quoi forger quelque chose d'intéressant d'hors et déjà.")
        i += 1
      end
    end
  end
end