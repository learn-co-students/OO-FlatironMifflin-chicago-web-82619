class Employee
    attr_accessor :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    def self.paid_over(amount)
        Employee.all.select do |employee|
            employee.salary > amount
        end
    end
    
    def self.find_by_department(department)
        Employee.all.find do |employee|
            employee.manager.department == department
        end
    end
    
    def tax_bracket
        Employee.all.select do |employee|
            employee.salary.between?(@salary - 1000, @salary + 1000)
        end
    end        
end