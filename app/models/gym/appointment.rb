class Appointment

    @@all = []

    attr_accessor :client
    def self.all
        @@all
    end

    def initialize(client, train_loc)
        @client = client
        @shift = train_loc
    end

    def trainer
        self.shift.trainer
    end

    def location
        self.shift.location
    end

end