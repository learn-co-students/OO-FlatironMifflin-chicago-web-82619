require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

zac = Manager.new("Zac", "tech", 25)
tony = Manager.new("Tony", "sales", 50)
steve = Manager.new("Steve", "operations", 37)

thor = Employee.new("Thor", 50000, "Zac")
bruce = Employee.new("Bruce", 75000, "Zac")
peter = Employee.new("Peter", 49500, "Tony")
wanda = Employee.new("Wanda", 30000, "Tony")
bucky = Employee.new("Bucky", 35000, "Steve")
natasha = Employee.new("Natasha", 50100, "Steve")



binding.pry
puts "done"
