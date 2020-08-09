class TrainerShift
    @@all = []

    attr_accessor :trainer,:location
    
    def self.all
        @@all
    end

    def initialize(trainer, location)
       
        @trainer = trainer
        @location = location
        @@all << self
    end

   

end