### AIRBNB ####

class Guest
    
    attr_accessor :name

    @@all = []

    
    def self.all
        @@all
    end

    def self.pro_traveler
        self.all.select {|traveler| traveler.trip_count > 1}
    end
    
    def self.find_all_by_name(name)
        self.all.select {|traveler| traveler.name == name}
    end


    def initialize(name)
        @name = name
        @@all << self
    end


    def listings
        trips.map {|trip| trip.listing}
    end

    def trips
        Trip.all.select {|trip| trip.guest == self}
    end

    def trip_count
        trips.count
    end


end