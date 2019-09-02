require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

michael = Manager.new('michael', 60, "paper department")
deryl = Manager.new('deryl', 20, 'warehouse department')

dwight = Employee.new('dwight', 39500, michael)
jim = Employee.new('jim', 40000, michael)
creed = Employee.new('creed', 10, deryl)
pam = Employee.new('pam', 40500, michael)
andy = Employee.new('andy', 25000, deryl)

#Test your code here


binding.pry
puts "done"
