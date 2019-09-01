require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

jim = Manager.new("Jim", "Merchandising and Maintenance", 35)
bob = Manager.new("Bob",  "Inventory Control", 33)
ted = Manager.new("Ted", "Customer Service", 40)


alex = Employee.new("Alex", 5600, jim)
jack = Employee.new("Jack", 7000, ted)
joseph = Employee.new("Joseph", 7200, jim)
jose = Employee.new("Jose", 6000, bob)
billy = Employee.new("Billy", 5800, bob)

binding.pry
puts "done"
