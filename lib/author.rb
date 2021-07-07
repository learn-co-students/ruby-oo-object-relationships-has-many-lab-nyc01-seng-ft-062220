require 'pry'

class Author

  attr_accessor :name

  @@post_count = 1

  def initialize(name)
    @name = name
  end

  def add_post(title)
    title.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @@post_count += 1
  end

  def posts
    Post.all.select {|post| post.author = self}
  end

  def self.post_count
    @@post_count
  end


end