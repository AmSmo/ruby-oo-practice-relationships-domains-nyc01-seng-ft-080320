############# IMDB

class Movie < Media
     @@all = []
    attr_reader :title
     def self.all
        @@all
    end
        def self.most_actors
            self.all.max_by { |movie| movie.actors.count }
        end

        def initialize(title)
        @title = title
        @@all << self
    end

     def actors
        characters.map {|char| char.actor}
    end
    
    def characters
        Character.all.select {|char| char.media == self }
    end

end