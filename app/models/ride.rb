############# LYFT


class Ride
    attr_reader :driver, :passenger, :distance
    @@all =[]

    def self.all
        @@all
    end

    def self.average_distance
        (self.all.sum {|ride| ride.distance })/ self.all.length
    end

    def initialize(driver, passenger, distance)
        @driver= driver
        @passenger = passenger
        @distance = (distance * 1.0)
        @@all << self
    end

end