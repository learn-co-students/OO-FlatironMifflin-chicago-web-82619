require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("Manager1", "Sales1", 42)
m2 = Manager.new("Manager2", "Sales2", 67)
m3 = Manager.new("Manager3", "Sales3", 82)
m4 = Manager.new("Manager4", "Sales4", 27)
e1 = Employee.new("Employee1",74300, "Manager1")
e2 = Employee.new("Employee2", 75500, "Manager1")
e3 = Employee.new("Employee3", 75000, "Manager3")
e4 = Employee.new("Employee4", 75400, "Manager4")


binding.pry
puts "done"
