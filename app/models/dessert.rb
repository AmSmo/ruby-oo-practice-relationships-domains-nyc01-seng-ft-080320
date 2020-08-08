

class Dessert
    attr_reader :name
    attr_accessor :bakery, :ingredients
    @@all = []

    def self.all
        @@all
    end

    def initialize(bakery, name, *ingredients)
        @bakery = bakery
        @name = name
        @ingredients = ingredients
        @@all << self
    end

    def calories
        ingredients.sum {|ingredient| ingredient.calories }
    end

end