class UserProject
    attr_accessor :owner, :project

    @@all = []

    def self.all
        @@all
    end

    def initialize(user,project)
        @owner = user
        @project = project
        @@all << self
    end

end