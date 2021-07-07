require 'pry'

class Song
  attr_accessor :artist
  attr_reader :name

  @@all = []

  def initialize(name)
    @artist = artist
    @name = name
    @@all << self
  end

  def artist_name
    if @artist.nil?
      return nil
    else
      @artist.name
    end
  end

  def self.all
    @@all
  end
end