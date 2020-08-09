############# IMDB

class Character
    attr_reader :actor, :char_name, :media
    
    @@all = []

    def self.all
        @@all
    end

    def self.most_appearances
        self.all.max_by {|a| a.count(self)}
    end
   

    def initialize(char_name, actor, media)
        @char_name= char_name
        @actor = actor
        @media = media
        @@all << self
    end

end