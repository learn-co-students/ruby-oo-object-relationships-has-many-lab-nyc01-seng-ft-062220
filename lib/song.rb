class Song
    attr_accessor :artist, :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def test(name)
        @name = name
    end

    def self.all
        @@all
    end

    def artist_name
        self.artist == nil ? self.artist : self.artist.name #returning itself if its nil, Jeff is smart! (copied from Jeff Adler)
    end
end