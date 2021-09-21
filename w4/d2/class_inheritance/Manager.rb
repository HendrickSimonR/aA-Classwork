<<<<<<< HEAD
require_relative 'Employee'
=======
require_relative 'Employee.rb'
>>>>>>> 3c298e23404f6fe30b7e3109ddafa22660874fe5

class Manager < Employee 
  attr_reader :employees

  def initialize 
    @employees = []
  end 
end 

# David = Employee.new(David, director developer, 100000000, Carl)

# David.employees 

# All Managers are employees (all managers have salaries )