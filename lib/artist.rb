require 'pry'
class Artist
    attr_reader :name



    def initialize(name)
        @name = name
        @songs = []
    end
    
    def add_song(title)
        @songs << title
        title.artist = self 
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end 

    def self.song_count
        Song.all.count
        #binding.pry  to confirm self is Author (CLASS)
    end

    def songs
        Song.all.select {|songs| songs.artist == self}
    end
end