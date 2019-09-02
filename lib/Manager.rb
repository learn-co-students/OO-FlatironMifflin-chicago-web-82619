class Manager

    attr_reader :name
    attr_accessor :department, :age

    @@all = []
    @@departments = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
        @@departments << department
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select {|employees| employees.manager == self}
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
        #takes a `String` argument and a `Fixnum` argument of an employee's name and the employee's salary, 
        #respectively, and adds that employee to the list of employees that the manager oversees
    end

    def self.all_departments
        @@departments
        #returns an `Array` of all the department names that every manager oversees
    end

    def self.average_age
        ages = self.all.map {|manager| manager.age.to_f}
        ages.sum / self.all.size
        #returns a `Float` that is the average age of all the managers
    end
end