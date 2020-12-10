
# ProjectBacker
# @@all
#   is a class variable set to an empty array
# .all
#   is a class method that returns the @@all class variable
# ::new
#   takes in a project and a backer on initialization, accessible through an attribute reader
#   stores the new instance of ProjectBacker in the @@all class variable

class ProjectBacker

    attr_accessor :project, :backer 

    @@all = []


    def initialize(project, backer)
        @project = project
        @backer = backer 
        save
    end


    def save
        @@all << self 
    end 

    def self.all
        @@all
    end 
end 