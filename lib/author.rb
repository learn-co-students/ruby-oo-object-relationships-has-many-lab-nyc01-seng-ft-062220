require_relative "../lib/artist.rb"
require_relative "../lib/song.rb"
require_relative "../lib/author.rb"
require_relative "../lib/post.rb"

class Author 
    attr_accessor :name
   
    def initialize(name)
      @name = name
    end
   
    def add_post(post)
      post.author = self
    end
   
    def posts
      Post.all.select {|post| post.author == self}
    end

    def add_post_by_title(post_title)
      post = Post.new(post_title)
      post.author = self
      # binding.pry
    end

    def self.post_count
      Post.all.count
    end


end