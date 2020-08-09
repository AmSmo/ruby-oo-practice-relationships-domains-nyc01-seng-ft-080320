
class Ingredient
    attr_reader :calories, :name

    @@all = []
    
    def self.all
        @@all
    end

    def self.find_all_by_name(name)
        self.all.select {|ingredient| ingredient.name.downcase.include?(name.downcase)}
    end

    def initialize(name,calories)
        @name = name
        @calories = calories
        @@all << self
    end

    def bakery
        dessert.map {|dessert| dessert.bakery }.uniq
    end

    def dessert
        Dessert.all.select { |dessert| dessert.ingredients.include?(self) }
    end
end