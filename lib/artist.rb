require 'pry'

class Artist

  attr_accessor :name, :songs

  @@song_count = 1

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select do |song|
      song.artist = self
    end
  end

  def add_song(song)
    @@song_count += 1
    @songs << self
    song.artist = self
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
    @songs << self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
end
