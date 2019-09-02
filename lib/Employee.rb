class Employee

    attr_reader :name, :manager, :salary

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

    def manager_name
        self.manager
        # returns a String that is the name of their manager
    end

    def self.paid_over(amount)
        self.all.select {|employee| employee.salary > amount}
        # takes a Fixnum argument and returns an Array of all the employees whose salaries are over that amount
    end

    def self.find_by_department(department)
        self.all.find {|employee| employee.manager.department == department}
    # takes a String argument that is the name of a department and returns the first employee whose manager is working in that department
    end

    def tax_bracket
        Employee.all.select {|employee| employee.salary.between?(@salary - 1000, salary + 1000)}
    # returns an Array of all the employees whose salaries are within $1000 (± 1000) 
    # of the employee who invoked the method
    end

end
