##### LYFT

class Driver

    @@all =[]

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
         self.all.select { |driver| driver.total_distance > distance }
    end

    def initialize(name)
        @name = name
        @@all << self
    end


    def passengers
        rides.map {|ride| ride.passenger}
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end
    
    def total_distance
        rides.sum {|ride| ride.distance}
    end


end