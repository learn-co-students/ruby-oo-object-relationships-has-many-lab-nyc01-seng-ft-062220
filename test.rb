require 'pry'

    "Hello World!"

class Experiment
    
    def initialize
        self.test1
    end
    def test1
        test1 = [1,2,3,4]
        .count
        .to_s
        .split
    end

    def x
        self.split
    end
end

breakingRuby = Experiment.new
binding.pry