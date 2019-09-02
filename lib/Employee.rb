class Employee
    attr_reader :name
    attr_accessor :salary, :manager

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def manager_name
        self.manager.name
    end

    def self.paid_over(num)
        Employee.all.select {|emp| emp.salary > num}
    end

    def self.find_by_department(dep)
        Employee.all.find {|emp| emp.manager.department == dep}
    end

    def tax_bracket
        Employee.all.select {|emp| emp.salary > self.salary - 1000}
    end


end
