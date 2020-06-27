class Author
    attr_accessor :name, :posts
    @@all = []
    def initialize(name=nil)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def posts
        Post.all.select do |each_post_object|
            each_post_object.author == self
        end
    end

    def add_post(post_object)
        post_object.author = self
    end

    def add_post_by_title(title_string)
        Post.new(title_string).author = self
    end

    def self.post_count
        all_associated_posts = Post.all.select do |post_object|
            post_object.author
        end
        all_associated_posts.collect do |associated_post_object|
            associated_post_object.author
        end
        .count
    end
end