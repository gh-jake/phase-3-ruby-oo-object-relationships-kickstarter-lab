class Backer
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.map {|project_backer| project_backer.backer == self ? project_backer.project : nil }.compact
    end
end