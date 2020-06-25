class Author 
    attr_reader :name
    def initialize(name)
        @name = name
        @posts = [] #only be storing the posts for that particualr instance variable (author)
    end

    def post(post_message)
        @posts << post_message
        post_message.author = self
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post_add)
        @posts << post_add
        post_add.author = self 
    end

    def add_post_by_title(post_title)
        newly_post = Post.new(post_title)
        newly_post.author = self
    end


    def self.post_count
        Post.all.count
        #binding.pry  to confirm self is Author (CLASS)
    end
end