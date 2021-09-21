require_relative 'Employee'

class Manager < Employee 
  attr_reader :employees

  def initialize 
    @employees = []
  end 
end 

# David = Employee.new(David, director developer, 100000000, Carl)

# David.employees 

# All Managers are employees (all managers have salaries )