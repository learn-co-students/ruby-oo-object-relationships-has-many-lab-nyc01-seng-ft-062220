class Artist
    attr_accessor :name
    #@@all = []

    def initialize(name)
        @name = name
        #@@all << self
    end

    def add_song(song)
        song.artist = self
    end

    def self.all
        @all
    end
    
    def songs
        Song.all.select{|song| song.artist == self}
    end

    def add_song_by_name(song)
        Song.new(song).artist = self
    end

    def self.song_count
        all_songs = Song.all.select{|song_instance|
            song_instance.artist != nil
        }
        all_songs.count
    end

end