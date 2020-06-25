class Post #link to author
    attr_accessor :title, :author

    @@all = [] #storing the truth data
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all #we need to for the class method to pull the list of all title-author
      @@all
    end

    def author_name
       # self.title? 
       if self.author 
        self.author.name #without if case was error on nil condition. was working fine on repl.it without condition but not on learn 
       else
        return nil
       end
    end
end