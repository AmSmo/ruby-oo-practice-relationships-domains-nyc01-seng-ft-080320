class Project
    attr_accessor :owner
    attr_reader :pledge, :project_goal
    @@all = []

    def self.all
        @@all
    end

    def self.no_pledges
        self.all.select { |pledge| pledge.pledge_count == 0}
    end

    def self.above_goal
        self.all.select {|proj| proj.total_backing > proj.project_goal}
    end

    def self.most_backers
        Project.all.max_by {|project| project.pledge_count}
    end

    def pledge_count
        pledges.length
    end

    def pledges
        Pledge.all.select {|pledge| pledge.project == self }
    end

    def total_backing
        pledges.sum {|pledge| pledge.amount}
    end

    def initialize(name, pledge_goal)
        @name = name
        @project_goal = pledge_goal
        @owner = nil
        @@all << self
    end

end