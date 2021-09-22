require_relative 'Employee'

class Manager < Employee 
  attr_accessor :employees

  def initialize(title, salary, boss=nil)
    super(title, salary, boss)
    @employees = []
  end 

  def add_employees(employees)
    employees.each { |employee| @employees << employee }
  end 
end 

# David = Employee.new(David, director developer, 100000000, Carl)

# David.employees 

# All Managers are employees (all managers have salaries )