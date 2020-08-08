######## LYFT

class Passenger

    @@all =[]

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def driver
        rides.map {|ride| ride.driver}
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end




end