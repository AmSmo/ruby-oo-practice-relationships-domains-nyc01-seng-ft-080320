######## LYFT

class Passenger

    @@all =[]

    def self.all
        @@all
    end

    def self.premium_members
        self.all.select { |pass| pass.total_distance > 100 }
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def drivers
        rides.map {|ride| ride.driver}
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def total_distance
        rides.sum {|ride| ride.distance}
    end


end