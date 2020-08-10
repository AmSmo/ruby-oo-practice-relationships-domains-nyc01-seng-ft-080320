class Trainer
    attr_reader :name
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
        Client.all.select {|client| client.trainer == self}
    end

    def client_count
        clients.length
    end

    def my_client?(client)
        client.trainer == self
    end

    def train_client(client,location)
        if !my_client?(client)
            puts "Changing your trainer for this session to #{self.name}"
            client.assign_trainer(self)
        end
         TrainerShift.new(self,location, client)
    end
end