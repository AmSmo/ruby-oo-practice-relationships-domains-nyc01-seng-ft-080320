############# IMDB

class Episode

    attr_reader :title, :show
    @@all = []
    def self.all
        @@all
    end
    
    def initialize(title,show)
        @title = title
        @show = show
        @@all << self
    end

    def characters
        
    end
end