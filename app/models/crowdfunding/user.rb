class User
    attr_reader :name
    @@all = []

    def self.all
        @@all
    end

    def self.highest_pledge
        Pledge.all.max_by{|pledge| pledge.amount }
    end

    def self.multi_pledger
        User.all.select {|user| user.pledge_count > 1}
    end

    def pledge_count
        pledges.length
    end

    def self.project_creator
        UserProject.all.map {|proj| proj.owner}
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def pledges
        Pledge.all.select {|pledge| pledge.user == self }
    end

    def projects
        pledges.map {|pledge| pledge.project }
    end

    def owner?
        UserProject.all.select {|proj| proj.owner == self }
    end

    def create_project(project)
        UserProject.new(self, project)
        project.owner = self
    end

    def create_pledge(project,amount)
        Pledge.new(self,project,amount)
    end
end