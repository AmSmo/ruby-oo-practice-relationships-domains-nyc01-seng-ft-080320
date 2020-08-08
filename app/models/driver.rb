##### LYFT

class Driver

    @@all =[]

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end


    def passenger
        rides.map {|ride| ride.passenger}
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

end