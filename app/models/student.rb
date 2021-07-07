class Student

    attr_accessor :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name

        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_student(first_name)
        searched = @@all.find { | student | student.first_name == first_name }
    end

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(test_name, self, status, instructor)
    end
        

    def boating_tests()
        BoatingTest.all.select {| test | test.student == self}
    end

    def passed_tests
        self.boating_tests.select { | test | test.status == "passed"}
    end

    def grade_percentage()
        (self.passed_tests.length.to_f / self.boating_tests.length.to_f) * 100
    end
    


end
