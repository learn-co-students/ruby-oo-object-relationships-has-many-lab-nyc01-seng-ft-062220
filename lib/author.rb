class Author
    attr_accessor :name

    def initialize(name)
        @name = name
    end 

    def posts
        Post.all.select { |post_inst| post_inst.author == self }
    end

    # Assumes song argument is a pre-existing song instance, which now needs to be associated with an artist's instance
    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        add_post(post)
    end

    def self.post_count
        Post.all.count
    end
    
end