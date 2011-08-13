class Blob < Thor
  include Thor::Actions
  desc "hello_world", "a french task"
  def hello_world
    say "Bonjour le monde !", :green
  end

  desc "say_something", "a french task"
  method_option :replace, :type => :boolean, :default => false
  def say_something(the_string)
    if yes?("Voulez vous mettre votre phrase en majuscules ?")
      say "Vous voulez mettre votre phrase en majuscules !", :yellow
      say the_string.upcase
    else
      say "Vous ne voulez mettre votre phrase en majuscules !", :green
      say the_string
    end
  end
end