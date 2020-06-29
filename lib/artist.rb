class Artist 

    attr_accessor :name 

    @@all = []
   
    def initialize(name = nil) 
        @name = name 
        puts self 
        @@all << self 
    end 


    def self.all 
        @@all 
    end 


    def songs
        Song.all.select do |artist_songs|
            artist_songs.artist 
        end 
    end  

    def add_song(song)
        song.artist = self 
    end 
    #takes in an argument of a song name, creates a new song with it and associates the song and artist
    def add_song_by_name(song_name)
        song_name = Song.new(song_name) 
        song_name.artist = self 
    end 

    #is a class method that returns the total number of songs associated to all existing artists

    def self.song_count
        Song.all.count 
    end 





end 
