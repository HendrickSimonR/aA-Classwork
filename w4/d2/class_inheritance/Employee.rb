require 'Manager.rb'

class Employee # SUPER
  attr_reader :salary

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary 
    @boss = boss # nil 
  end 

  def bonus(multiplier)
    if self.employees.empty?
      return self.salary * multiplier
    else 
      # bonus = (total salary of all sub-employees) * multiplier
    end  
  end 
end