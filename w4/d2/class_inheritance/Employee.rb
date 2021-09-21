require_relative 'Manager.rb'


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


# Boss = David 
# Davids Employees = [kyle, peter, michael]
# Kyles Employees = [jessica, janet, Brian]