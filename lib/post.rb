require_relative "../lib/artist.rb"
require_relative "../lib/song.rb"
require_relative "../lib/author.rb"
require_relative "../lib/post.rb"

class Post
    attr_accessor :author, :title

 @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end


    def self.author(title)
        # binding.pry
    song.author = title
    end

    def author_name
        # binding.pry
        author.name if author

    # binding.pry
    end

end