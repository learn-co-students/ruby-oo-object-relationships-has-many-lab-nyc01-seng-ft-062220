
class Song
    attr_accessor :artist, :name, :genre

    @@all = []
    def initialize(name, genre=nil, artist=nil)
        @name = name
        @genre = genre
        @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end
    
    def artist_name
        if artist
            artist.name
        else
            nil
        end
        
    end

end