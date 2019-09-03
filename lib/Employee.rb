class Employee
    attr_reader :name
    attr_accessor :salary, :manager_name
    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        Manager.all.select { |manager| 
            if manager.name == manager_name
                manager.employees << self
            end
        }
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(num)
        all.select { |employee| employee.salary > num }
    end

    def self.find_by_department(dept)
         mgr = Manager.all.find { |managers| managers.department == dept  }
         mgr.employees[0]
    end

    def tax_bracket
        bracket = []
        Employee.all.select { |employee|
            if employee.salary < (self.salary + 1000.0) && employee.salary > (self.salary - 1000.0)
                bracket << employee
            end
        }
        bracket
    end

end

# Employee#tax_bracket
# returns an Array of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method