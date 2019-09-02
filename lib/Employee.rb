class Employee
    attr_reader :name, :salary, :manager_name
    @@all = []
    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end
    def self.all
        @@all
    end
    def self.paid_over(salary)
        all.select{|obj| obj.salary > salary}
    end
    def self.find_by_department(department)
        manager = Manager.all.find{|obj| obj.department == department}
        all.find{|obj| obj.manager_name == manager.name}
    end
    def tax_bracket
        @@all.select do |obj| 
            (obj != self) ? (obj.salary - self.salary).abs <= 1000 : false 
        end
    end

end
