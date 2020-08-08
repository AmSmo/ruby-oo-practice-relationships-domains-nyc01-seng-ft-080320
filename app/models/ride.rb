############# LYFT


class Ride

    @@all =[]

    def self.all
        @@all
    end

    def initialize(driver, passenger)
        @driver= driver
        @passenger = passenger
        @@all << self
    end

end