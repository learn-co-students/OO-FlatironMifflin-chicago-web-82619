require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

john = Manager.new("John", "pmm", 30)
patrice = Manager.new("Patrice", "research", 50)

james = Employee.new("James", 40000, patrice)
dante = Employee.new("Dante", 40500, john)
meg = Employee.new("Meg", 70000, patrice)

binding.pry
puts "done"
