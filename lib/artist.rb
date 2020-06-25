require "pry"

class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end


    def add_song (song)
       song.artist = self
    end

    def add_song_by_name (song)
        Song.new(song, self)
    end
    #binding.pry

    def self.song_count
        Song.all.count
    end

end
