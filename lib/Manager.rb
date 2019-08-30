class Manager

    attr_reader :name, :department, :age
    @@all = []
    @@departments = []
    @@ages = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
        @@departments << department
        @@ages << age
    end

    def employees
        e = Employee.all.select {|employee| employee.manager == self}
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        @@departments
    end

    def self.average_age
        @@ages.reduce(:+) / @@ages.count
    end

end
