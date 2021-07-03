class Post
    attr_accessor :title, :author

    @@all = []
    def initialize(title=nil, author=nil)
        @title = title
        @author = author
        @@all << self
    end

    def self.all
        @@all
    end

    def posts
        self.posts.author
    end
    def author_name
        if author
            author.name
        else
            nil
        end
    end
    
end
