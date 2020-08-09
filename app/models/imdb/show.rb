############# IMDB

class Show < Media
    @@all = []
    attr_reader :title, :media
    # @all = []

    def self.all
        @@all
    end

    def initialize(title)
        @title = title
        @@all << self
    end

    def on_the_big_screen
        # movie of same name?
        Movie.all.any? {|movie| movie.title.downcase.include?(self.title.downcase)}
    end

     def actors
        characters.map {|char| char.actor}.uniq
    end
    
    def characters
        Character.all.select {|char| episodes.include?(char.media) }
    end

    def episodes
        Episode.all.select {|ep| ep.show == self}
    end


end