class Student

    @@all = []

    attr_accessor :first_name

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
        #should initialize a new boating test with a Student (Object), 
        #a boating test name (String), a boating test status (String), and an Instructor (Object)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(name)
        #will take in a first name and output the student (Object) with that name
        @@all.find{ |student| student.name = name }
    end 

    def grade_percentage 
        #should return the percentage of tests that the student has passed, a Float 
        #(so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
        my_tests = BoatingTest.all.select{ |test| test.student == self } #select all tests which a student has taken
        passed = 0
        failed = 0
        my_tests.each do |test|
            if test.test_status == "passed"
                passed += 1
            elsif test.test_status == "failed"
                failed += 1
            else
                #next
            end
        end
        percentage = (passed.to_f / (passed + failed).to_f) * 100
    end


end