class Artist
    attr_accessor :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def add_song(song)
      song.artist = self
    end
  
    def add_song_by_name(name)
      song = Song.new(name)
      add_song(song)
      
    end
  
    def songs
      Song.all.select {|song| song.artist == self}
    end
  
    # def song_name
      
    # songs.map {|b| b.name}
    #  # Song.all.count
    # end
  
    def self.song_count
        Song.all.size
  end
  def all_song
    Song.all.map {|song| song.name}
  end
  
  def all_artist
     Song.all.map {|song| song.artist}
  end
  def no_duplicate_artist
    all_artist.uniq
  end
  end