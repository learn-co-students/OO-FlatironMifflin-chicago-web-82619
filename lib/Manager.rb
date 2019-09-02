class Manager
    attr_reader :name, :department, :age
    @@all= []
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end
    def self.all
        @@all
    end
    def employees
        Employee.all.select{|obj| obj.manager_name == self.name}
    end
    def hire_employee(name, salary)
        Employee.new(name, salary, self.name)
    end
    def self.all_departments
        all.map{|obj| obj.department}
    end
    def self.average_age
        arr = all.map{|obj| obj.age}
        (arr.sum.to_f / arr.count)
    end
end
