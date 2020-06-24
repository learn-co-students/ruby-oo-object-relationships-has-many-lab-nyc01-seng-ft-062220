require 'pry'

class Artist

    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        Artist.all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |element| 
        element.artist_name == self.name
        end
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end

    def self.song_count
        Song.all.length
    end

end