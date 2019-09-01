class Manager
    attr_accessor :name, :age, :department

    @@all = []

    def initialize(name, department, age)
        @name = name
        @age = age
        @department = department
        @@all << self
    end

    def self.all
        @@all
    end
    
    def employees
        Employee.all.select do |employee| 
            employee.manager == self
        end
    end
    
    def self.hire_employee(name, salary)
        Employee.new(name, salary, self)
    end
    
    def self.average_age
        all_age = Manager.all.collect {|manager| manager.age}
        all_age.reduce(:+)/all_age.size
    end    
end
