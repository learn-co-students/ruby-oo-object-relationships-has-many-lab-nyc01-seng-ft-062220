class Post
    attr_accessor :title, :author
    @@all=[]
    def initialize(title)
        @title=title
        @@all<<self
    end
    def self.all
    @@all
    end
    def author_name
        aname=""
        if self.author==nil
            aname=nil
        else
            aname=self.author.name 
        end 
        aname

    end
    

end 