class Employee

    attr_reader :manager, :name, :salary
    @@all = []
    @@salaries = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
        @@salaries << salary
    end

    def self.all
        @@all
    end

    def self.paid_over(amt)
        @@all.select {|employees| employees.salary >= amt}
    end

    def self.find_by_department(dep)
        @@all.find {|employees| employees.manager.department == dep}
    end

    def tax_bracket
        @@all.select {|employees| employees.name != @name && employees.salary > @salary - 1000 && employees.salary < @salary + 1000}
    end

end
