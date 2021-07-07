class Post
    attr_accessor :title, :author, :name
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        if !self.author
            self.author
        else
            self.author.name
        end
    end
end