require_relative "../lib/artist.rb"
require 'pry'

class Song
 attr_accessor :artist, :name

 @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end


    def self.artist(name)
        # binding.pry
    song.artist = name
    end

    def artist_name
        # binding.pry
        artist.name if artist

    # binding.pry
    end
end

