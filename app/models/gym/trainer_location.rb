class TrainerShift
    @@all = []

    attr_accessor :trainer,:location, :client
    
    def self.all
        @@all
    end

    def initialize(trainer, location, client = nil)
        @client = client
        @trainer = trainer
        @location = location
        @@all << self
    end

    def walk_in(client)
        @client = client
    end

end