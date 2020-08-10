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
    
    def training_sessions
        TrainerShift.all.select {|tl| tl.location == self}
    end

    def trainers
        training_sessions.map {|sesh| sesh.trainer }
    end

    def clients
        training_sessions.map { |session| session.client }
    end

    def client_count
        clients.compact.uniq.length
    end

end