class LeFin < Thor
  desc "hello_world", "a french task"
  def hello_world
    puts "Bonjour le monde !"
  end

  desc "kate FILE", "display a file content"
  def kate(file)
    puts IO.read(file) + "\n"
  end

  desc "hello_mate", "say hello to someone"
  method_option :name, :default => "bob", :desc => "The person you want to say hello to"
  def hello_mate
    puts "Bonjour #{options[:name]}"
  end

  desc "hello_mate2", "say hello to someone"
  method_option :name, :desc => "The person you want to say hello to", :required => true
  def hello_mate2
    puts "Bonjour #{options[:name]}"
  end

  desc "big_hello", "say hello with options"
  method_option :name, :default => "bob", :desc => "The person you want to say hello to"
  method_option :date, :type => :boolean, :default => false
  method_option :age, :type => :numeric, :default => 18
  method_option :names, :type => :array, :default => ["bob", "bill"]
  method_option :infos, :type => :hash, :default => {"name" => "bob", "age" => 18}
  def big_hello
    puts Time.now if options[:date]
    
    if options[:name]
      puts "\nBasic"
      puts "Bonjour #{options[:name]}, tu as #{options[:age]} ans"
    end
    
    if options[:names]
      puts "\nNames :"
      options[:names].each { |person| puts "Bonjour #{person}" }
    end
    
    if options[:infos]
      puts "\nInfos :"
      puts "Bonjour #{options[:infos]["name"]}, tu as #{options[:infos]["age"]} ans"
    end
  end
end