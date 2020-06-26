class Artist
    attr_accessor :name
    @@all=[]
    
    def initialize(name)
        @name=name
        @@all<<self
    end

    def self.all
        @@all
    end 
    def new_song(name, genre)
        Song.new(name, genre, self)
    end
    def songs
        Song.all.select do |song|
            song.artist==self 
        end
    end
    def add_song(song)
        song.artist=self
    end 
    def add_song_by_name(song_name)
        new_song=Song.new(song_name)
        new_song.artist=self
    end 
    def self.song_count
        songs=Song.all.select do |song|
            song.artist!=nil
        end
        songs.length 
    end 




end