class Location

    @@all = []

    def self.all
        @@all
    end

    def self.least_clients
        self.all.min_by {|loc| loc.client_count}
    end

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def trainers
        TrainingSession.all.select {|tl| tl.location == self}
    end

    def clients
        trainers.clients
    end

    def client_count
        trainers.sum{|trainer| trainer.client_count}
    end

end