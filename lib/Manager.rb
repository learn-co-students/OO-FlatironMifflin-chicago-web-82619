class Manager
    attr_reader :name, :age, :department

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        @@all << self
    end

    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        Manager.all.collect {|manager| manager.department}
    end

    def self.average_age
        ages = Manager.all.collect {|man| man.age}
        ages.inject(:+) / ages.length
    end


end
