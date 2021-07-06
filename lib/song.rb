require 'pry'
class Song 

    attr_accessor :artist, :name, :genre
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def artist_name
        #binding.pry
        #puts self 
       #puts  self.artist 
       #puts  self.artist.name 
     if artist
            artist.name 
        else nil 
        end 
        #binding.pry
    end 
     


end 