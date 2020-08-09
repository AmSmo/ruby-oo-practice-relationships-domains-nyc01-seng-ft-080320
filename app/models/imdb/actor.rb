############# IMDB

class Actor
    attr_accessor :name
    @@all =[]

    def self.all
        @@all
    end

    def self.most_characters
        self.all.max_by {|actor| actor.characters.length}
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def movies
        characters.select {|char| char.media.class == Movie}
    end

    def characters
        Character.all.select {|char| char.actor == self}
    end

    def tv
        characters.select {|char| char.media.class == Episode}
    end
end