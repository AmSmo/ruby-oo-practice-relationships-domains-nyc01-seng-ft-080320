class Client
    attr_accessor :trainer 
    
    @@all = []

    def self.all
        @@all
    end

   def initialize(name, trainer = nil)
        @name = name
        @trainer = trainer
        @@all << self
    end

    def assign_trainer(trainer)
        self.trainer = trainer
    end

end