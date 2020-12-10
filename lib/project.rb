# Project - ::new
#   takes a title on initialization, accessible through an attribute reader


require 'pry'


class Project
    
    attr_reader :title

    def initialize(title)
        @title = title
    end 
   

#     Project - #add_backer
#   is an instance method that accepts a backer as an argument and creates a ProjectBacker, 
#   associating the backer with this project 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

#     Project - backers
#   returns an array of backers associated with this Project instance


    def backers
        projectbackers = ProjectBacker.all.select {|x| x.project == self} #return ALL backers
        projectbackers.map {|x| x.backer}   #iterated AGAIN, to get project only
    end 

end 