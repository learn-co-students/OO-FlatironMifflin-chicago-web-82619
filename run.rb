require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

m1 = Manager.new("Michael", "People", 50)
m2 = Manager.new("Jan", "Corporate", 51)
m3 = Manager.new("Jim", "Paper", 35)
e1 = Employee.new("Dwight",80000, m1)
e2 = Employee.new("Pam",40000, m3)
e3 = Employee.new("Toby",40999, m2)
e4 = Employee.new("Oscar",50001, m2)

binding.pry
puts "done"
