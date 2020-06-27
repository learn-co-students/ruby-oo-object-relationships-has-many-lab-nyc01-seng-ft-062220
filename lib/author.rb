class Author
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select{|post| post.author == self}
    end
    
    def add_post(post)
       post.author = self 
    end
    
    def add_post_by_title(title)
        author = Post.new(title)
        add_post(author)
    end

    def self.post_count
        Post.all.count
    end
    
    
end