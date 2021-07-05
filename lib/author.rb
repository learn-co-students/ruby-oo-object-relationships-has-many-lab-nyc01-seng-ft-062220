class Author
    attr_accessor :name
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end
    
    def add_post(post)
        post.author = self
    end   

    def add_post_by_title(string)
        new_post=Post.new(string)
        add_post(new_post)

    end
    def posts
        Post.all.select{|i| i.author = self}
    end   

    def self.post_count
        Post.all.count
    end
    

    

end    