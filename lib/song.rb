class Song
    attr_accessor :artist, :name

    @@all = []

    def initialize(name)
        @name = name
        Song.all << self
    end

    def self.all
        @@all
    end

    def artist_name
        self.artist.name if self.artist
    end

end

### Note:
#       - in order to have an artist find all of it's songs, the song class needs to know about all its song instances; and, 
#       - a song instance needs to know about the artist class it belongs to.

