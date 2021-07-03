require 'pry'
class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backer_array = ProjectBacker.all.select {|pb| pb.project == self}
        backer_array.map { |pb| pb.backer }
        binding.pry
    end
end