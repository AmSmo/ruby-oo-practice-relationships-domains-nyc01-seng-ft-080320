class Pledge
    attr_reader :user, :project, :amount
    @@all = []

    def self.all
        @@all
    end

    def initialize(user,proj, amount)
        @user = user
        @project = proj
        @amount = amount
        @@all << self
    end


end