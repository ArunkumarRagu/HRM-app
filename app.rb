class Employee
    attr_accessor :empid, :name, :age, :doj, :rating, :reporting_to
  
    def initialize(id, name, age, doj, rating, reporting_to)
      @empid = id
      @name = name
      @age = age
      @doj = doj
      @rating = rating
      @reporting_to = reporting_to
    end
  
    def reporting
      puts "Myself #{@name} is Reporting to #{@reporting_to}"
      puts "\n"
    end
  
    def apply_leave(days)

      puts "#{@name} has applied for #{days} days of leave"
      puts "\n"
    end
  
    def ==(other)
        @rating == other.rating &&
        @doj == other.doj
    end
  end
  
  class ListEmployees
    def initialize
      @employees = []
    end
  
    def add_employee(employee)
      @employees << employee
    end
  
    def find_by_name(name)
      @employees.find { |employee| employee.name == name }
    end
  end
  
  employee1 = Employee.new(1, "Akash", 20, "2023-04-18", 4.5, "Manager")
  employee2 = Employee.new(2, "Barath", 21, "2023-06-26", 4.8, "Team Lead")
  employee3 = Employee.new(3, "Openheimer", 23, "2022-11-20", 4.2, "Manager")
  
  list_employees = ListEmployees.new
  list_employees.add_employee(employee1)
  list_employees.add_employee(employee2)
  list_employees.add_employee(employee3)
  
  employee2.reporting

  puts "Enter the number of days taking leave"
  days = gets.chomp.to_i
  employee2.apply_leave(days)

  puts "Enter the employee name want to search "
  search = gets.chomp
  
  found_employee = list_employees.find_by_name(search)
  if(found_employee)
  puts "FOUND EMPLOYEE:"
  puts "Employee ID: #{found_employee.empid}"
  puts "Name: #{found_employee.name}"
  puts "Age: #{found_employee.age}"
  puts "Date of Birth: #{found_employee.doj}"
  puts "Rating: #{found_employee.rating}"
  puts "\n"
  else
    puts"EMPLOYEE NOT FOUND"
    puts "\n"
  end
  
  # Compare two employees
  employee4 = Employee.new(4, "Vinoth", 30,"2023-04-18", 4.5, "Manager")
  if employee1 == employee4
    puts "Comparing #{employee1.name} and #{employee4.name} : Employee #{employee1.name} and #{employee4.name} are equal."
  else
    puts "Comparing #{employee1.name} and #{employee4.name} : Employee #{employee1.name} and #{employee4.name} are not equal."
  end

  
  