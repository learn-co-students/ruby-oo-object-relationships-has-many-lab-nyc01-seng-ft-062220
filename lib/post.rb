require 'pry'

class Post
  attr_accessor :author
  attr_reader :title

  @@all = []

  def initialize(title)
    @author = author
    @title = title
    @@all << self
  end

  def author_name
    if @author.nil?
      return nil
    else
      @author.name
    end
  end

  def self.all
    @@all
  end
end