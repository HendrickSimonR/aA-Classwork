# require_relative 'Manager'

class Employee # SUPER
  attr_reader :salary, :title, :boss

  def initialize(title, salary, boss=nil)
    @title = title
    @salary = salary 
    @boss = boss # nil 
  end 

  def bonus(multiplier)
    if self.employees.empty?
      return self.salary * multiplier
    else 
      # bonus = (total salary of all sub-employees) * multiplier
      boss_bonus * multiplier
    end  
  end 

  # helper
  def boss_bonus
    total = 0

    self.employees.each do |employee|
      if !employee.employees.empty?
        total += employee.boss_bonus + employee.salary
      else 
        total += employee.salary
      end
    end

    total
  end
end

ned = Employee.new('Founder', 1000000)
darren = Employee.new('TA Manager', 78000, ned)
shawna = Employee.new('TA', 12000, darren)
david = Employee.new('TA', 10000, darren)

ned.add_employees([darren])
ned = Manager.new('Founder', 1000000)
puts ned.employees

# ned.add_employees([darren])
# darren.add_employees([shawna, david])

puts ned.bonus(5) 
puts darren.bonus(4)
puts david.bonus(3) 