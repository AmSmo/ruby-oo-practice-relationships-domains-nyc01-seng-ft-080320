class Trainer
    @@all = []

    def self.all
        @@all
    end

    def self.most_clients
        Trainer.all.max_by { |trainer| trainer.client_count }
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def clients
        Client.all.find {|client| client.trainer == self}
    end

    def client_count
        clients.length
    end

end