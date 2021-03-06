### AIRBNB ####

class Listing

    @@all = []

    attr_accessor :city, :name

    def self.all
        @@all
    end

    def self.find_by_city(city)
        self.all.select {|listing| listing.city == city}
    end

    def self.most_popular
        self.all.max_by {|listing| listing.trip_count}
    end

    def initialize(city,name)
        @name = name
        @city = city
        @@all << self
    end

    def guests
        trips.map {|trip| trip.guest }
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def trip_count
        trips.count
    end

end