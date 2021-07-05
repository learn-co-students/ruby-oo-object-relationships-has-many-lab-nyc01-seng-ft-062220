class Artist
    @@all = []
    attr_accessor :name
    attr_reader :artist

    def initialize (name)
        @@all << self
        @name = name
    end 
    
    def self.all
        @@all
    end   

    def songs
        Song.all.select{|i| i.artist == self}
    end   

    def add_song(some_song)
        some_song.artist = self
    end   

    def add_song_by_name(name)
        new_song =Song.new(name)
        add_song(new_song)
    end

    def self.song_count

       Song.all.count
    end   




end
