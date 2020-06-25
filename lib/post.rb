class Post

    attr_accessor :title, :author

        @@all = []

    def initialize(title, author = nil)
        @title = title
        @author = author
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        self.author == nil ? self.author : self.author.name
    end


end
