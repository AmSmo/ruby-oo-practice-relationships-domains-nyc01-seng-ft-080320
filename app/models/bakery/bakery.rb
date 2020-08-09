

class Bakery
    
    attr_accessor :name
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def ingredients
        desserts.map {|dessert| dessert.ingredients}.flatten.uniq
    end

    def desserts
        Dessert.all.select {|dessert| dessert.bakery==self}
    end

    def average_calories
        (desserts.sum { |dessert| dessert.calories })/(desserts.length * 1.0)
    end

    def shopping_list
        get_these= "Here's what you want:"
        to_buy = ingredients.map {|ingredient| ingredient.name}
        to_buy.each do |item|
            get_these += " #{item.downcase},"
        end
        get_these = get_these[0...-1] + "."
        get_these
    end


end