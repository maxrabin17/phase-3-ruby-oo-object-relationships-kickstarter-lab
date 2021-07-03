require 'pry'
class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backed = ProjectBacker.all.select {|pb| pb.backer == self}
        project_backed.map { |pb| pb.project }
        # binding.pry
    end
end