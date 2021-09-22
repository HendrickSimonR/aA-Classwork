
module Walkable
   def walk
      puts 'SOMETHING'
   end 
end 

# require_relative "walkable"

class Robot 
    include Walkable			# include module_name to access module 
    
    attr_reader :name
   
    def initialize(name)
          @name = name 
    end 
end 

