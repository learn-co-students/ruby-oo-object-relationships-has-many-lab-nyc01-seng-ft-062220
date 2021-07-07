class Author
    attr_accessor :name
    def initialize(name)
        @name=name 
    end
    def posts
        posts=Post.all.select do |post|
            post.author==self
        end 
    end
    def add_post(post)
        post.author=self 
    end 
    def add_post_by_title(post_title)
        post=Post.new(post_title)
        post.author=self
    end
    def self.post_count
        posts=Post.all.select do |post|
            post.author !=nil
        end
        posts.length
    end
    
end