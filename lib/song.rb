require 'pry'

class Song
    attr_accessor :name, :artist
    @@all=[]

    def initialize(name)
        @name=name
        @@all<<self
    end 

    def self.all
        @@all 
    end  
    def artist_name
        aname = ""
        if self.artist==nil
            aname=nil 
        else
            aname = self.artist.name
        end 
        aname
    end
   
end 