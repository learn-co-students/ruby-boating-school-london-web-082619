class Student
 @@all = [] 

 attr_reader :first_name 

 def initialize(first_name)
    @first_name 
    @@all << self 
 end 

 def self.all 
    @@all 
 end 

def boating_test 
    BoatingTest.all.select{|test| test.student == self}
end 

def add_boating_test(instructor, test_name, status)
    BoatingTest.new(self, test_name, status, instructor) 
end 

def self.find_student(first_name_input)
    @@all.find{|student| student.first_name == first_name_input}
end 

def grade_percentage
    boating_test.count{|test| test.test_status == "passed"} / 
    boating_test.count{|test| test.test_status}.to_f * 100 
end 



end
