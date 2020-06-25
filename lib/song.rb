require 'pry'

class Song
    attr_accessor :name, :artist
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
        if @artist
            @artist.name
        else
            nil
        end
        #self.artist
        #Artist.all.select{|artist_instance| artist_instance.} 
        #Artist.add_song_by_name(@name)
        #self.artist
    end

end



#binding.pry