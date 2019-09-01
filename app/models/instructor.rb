class Instructor

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
        #If there is a BoatingTest whose name and student match the values passed in, update the status of that BoatingTest to 'passed'. 
        if test = BoatingTest.all.find{ |test| test.test_name == test_name && test.student == student }
            test.test_status = "passed"
        #If there is no matching test, create a test with the student, that boat test name, and the status 'passed'. 
        else
            test = BoatingTest.new(student, "Test 1", "passed", self)
        end
       test
    end

    def fail_student (student, test_name)
        if test = BoatingTest.all.find{ |test| test.test_name == test_name && test.student == student }
            test.test_status = "failed"
        elsif 
            test = BoatingTest.new(student, "Test 1", "failed", self) 
        end
       test
    end


end