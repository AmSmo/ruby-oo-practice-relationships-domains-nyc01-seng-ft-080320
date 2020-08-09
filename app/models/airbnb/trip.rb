### AIRBNB ####

class Trip

    @@all = []

    attr_accessor :guest, :listing

    def self.all
        @@all
    end
    

    def initialize(guest, listing)
        @guest = guest
        @listing = listing
        @@all << self
    end

end