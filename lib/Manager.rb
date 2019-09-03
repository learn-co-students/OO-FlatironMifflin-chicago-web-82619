class Manager
    attr_reader :name 
    attr_accessor :age, :employees, :department
    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all_departments
        Manager.all.map { |manager| manager.department }
    end

    def self.average_age
        sum = 0.0
        Manager.all.select { |manager| sum += manager.age }
        (sum / Manager.all.length).to_f.round(2)
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self.name)
    end

end