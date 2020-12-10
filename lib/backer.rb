# Backer - ::new
#   takes a name on initialization, accessible through an attribute reader


require 'pry'

class Backer 

    attr_reader :name

    def initialize(name)
        @name = name 
    end 

#     Backer - #back_project
#   is an instance method that accepts a project as an argument and creates a ProjectBacker, 
#   associating the project with this backer

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    #     Backer - backed_projects
#   returns an array of projects associated with this Backer instance


    def backed_projects
        projectbackers = ProjectBacker.all.select {|x| x.backer == self} #return ALL backers
        projectbackers.map {|x| x.project}   #iterated AGAIN, to get project only
    end 
end
