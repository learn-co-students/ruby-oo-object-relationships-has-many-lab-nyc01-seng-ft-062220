class Song
    @@all = []
    attr_accessor :artist, :name

    def initialize(name)
        @@all << self     
        @name = name
    end   

    def artist_name
        if @artist
            @artist.name
        else
            return nil
        end    

    end    

    def self.song_count
        @@all.count
    end   
    
    def self.all
        @@all
    end



end
