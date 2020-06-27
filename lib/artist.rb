class Artist
    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        @songs
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name_string)
        add_song(Song.new(song_name_string))
    end

    def self.song_count
        associated_songs = Song.all.select do |each_song_object|
            each_song_object.artist
        end
        associated_songs.count
    end
end