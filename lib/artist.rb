class Artist
    attr_accessor :name 
    
    #? optional // this does not seem to be required to build has-many relationship
    #@@all = []

    def initialize(name)
        @name = name
        #? optional // this does not seem to be required to build has-many relationship
        # @@all << self
    end

    def songs
        Song.all.select { |song_inst| song_inst.artist == self }
    end

    # Assumes song argument is a pre-existing song instance, which now needs to be associated with an artist's instance
    def add_song(song)
       song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        add_song(song)
    end

    def self.song_count
        Song.all.count
    end

end