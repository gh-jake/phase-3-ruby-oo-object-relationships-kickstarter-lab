class Project
    attr_accessor :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.map {|project_backer| project_backer.project == self ? project_backer.backer : nil }.compact
    end
end