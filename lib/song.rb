require "pry"

class Song
    attr_reader :name
    attr_accessor :artist
    @@all = []

    def initialize(name, artist=nil)
        @name = name
        @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if self.artist == nil
            return nil
        end
        self.artist.name
    end

end