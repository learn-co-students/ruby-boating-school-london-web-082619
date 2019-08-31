class Student

    @@all=[]

    attr_reader :first_name

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new()
    end

    def self.find_student(first_name)
        self.all.find{|student| student.first_name = first_name}
    end

    def tests_completed
        BoatingTest.all.select{|test| test.student == self}
    end

    def grade_percentage
        taken = tests_completed
        passed = tests_completed.select{|test| test.test_status == "Pass"}
        (passed/taken).to_f
    end

end