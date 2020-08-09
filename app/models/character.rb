############# IMDB

class Character
    attr_reader :actor, :char_name, :media
    
    @@all = []

    def self.all
        @@all
    end

    def self.most_appearances
       appearances = self.all.inject(Hash.new(0)) {|h,v| h[v.char_name]+=1;h}
       appearances.max_by { |char, apps| apps}
    end
   

    def initialize(char_name, actor, media)
        @char_name= char_name
        @actor = actor
        @media = media
        @@all << self
    end

end